-- anything after two minus signs like this is a comment.

variables P Q R : Prop -- P, Q, R are now true/false statements.

-- Reminder : ∧ means "and".

theorem basic_logic : (P → Q) ∧ (Q → R) → (P → R) :=
begin
intro H, -- H is "P implies Q and Q implies R"
have HPQ : P → Q,
exact H.left,
have HQR : Q → R,
exact H.right,
clear H, -- we don't need it any more

-- We now have hypothesis HPQ, which is P -> Q
-- and hypothesis HQR, which is Q -> R.
-- We want to prove P -> R so let's assume P
-- and deduce R.

intro HP,
have HQ : Q,
exact HPQ HP, -- apply P->Q to P to get Q.
-- now we can get the goal
exact HQR HQ
end