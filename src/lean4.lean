-- anything after two minus signs like this is a comment.

variables P Q R : Prop -- P, Q, R are now true/false statements.

-- Reminder : ∧ means "and".

theorem basic_logic : (P → Q) ∧ (Q → R) → (P → R) :=
begin
admit
end