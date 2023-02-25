(declare-const p Bool)
(declare-const q Bool)
(declare-const r Bool)
(define-fun conjecture () Bool
    (and (or (not r) q) (and (or p or q (not q)) (and (or (not q) or r p) 
    (and (or (not p ) r) (or q (not r)))))))

(define-fun res1 () Bool
	(and (or q (not p)) and (or q or p (not q)) and (or p or r (not r)) 
    and (or q or (not r) p) and (or r (not q)) (or r or (not q) q)))
        
; Every clause after the first resolution were trivial clauses so they are left out of the SMT file

(assert (= conjecture (and conjecture res1)))

(check-sat)
