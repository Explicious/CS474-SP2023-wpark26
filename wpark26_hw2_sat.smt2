(declare-const p Bool)
(declare-const q Bool)
(declare-const r Bool)
(define-fun conjecture () Bool
    (and (or (not r) q) (and (or p or q (not q)) (and (or (not q) or r p) 
    (and (or (not p ) r) (or q (not r)))))))

(assert (_ conjecture))

(check-sat)
