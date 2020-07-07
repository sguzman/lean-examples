theorem and_swap (p q : Prop) : p ∧ q → q ∧ p :=
begin
    assume h : (p ∧ q), -- assume p ∧ q is true
    cases h, -- extract the individual propositions from the conjunction
    split, -- split the goal conjunction into two cases: prove p and prove q separately
    repeat { assumption } 
end