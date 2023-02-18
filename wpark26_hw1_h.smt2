(declare-const p00 Bool)
(declare-const p01 Bool)
(declare-const p02 Bool)
(declare-const p10 Bool)
(declare-const p11 Bool)
(declare-const p12 Bool)
(declare-const p20 Bool)
(declare-const p21 Bool)
(declare-const p22 Bool)
(declare-const p30 Bool)
(declare-const p31 Bool)
(declare-const p32 Bool)
(declare-const p40 Bool)
(declare-const p41 Bool)
(declare-const p42 Bool)

(define-fun colored ((x!1 Bool) (x!2 Bool) (x!3 Bool)) Bool 
    (or x!1 or x!2 x!3) 
)

(define-fun unique ((x!1 Bool) (x!2 Bool) (x!3 Bool)) Bool
    (and (not (and x!1 x!2)) and (not (and x!1 x!3)) (not (and x!2 x!3)))
)

(define-fun edge ((x!1 Bool) (x!2 Bool)) Bool 
    (not (and x!1 x!2))
)

(assert (colored p00 p01 p02))
(assert (colored p10 p11 p12))
(assert (colored p20 p21 p22))
(assert (colored p30 p31 p32))
(assert (colored p40 p41 p42))
(assert (unique p00 p01 p02))
(assert (unique p10 p11 p12))
(assert (unique p20 p21 p22))
(assert (unique p30 p31 p32))
(assert (unique p40 p41 p42))

(assert (edge p00 p10))
(assert (edge p01 p11))
(assert (edge p02 p12))

(assert (edge p00 p20))
(assert (edge p01 p21))
(assert (edge p02 p22))

(assert (edge p10 p20))
(assert (edge p11 p21))
(assert (edge p12 p22))

(assert (edge p10 p30))
(assert (edge p11 p31))
(assert (edge p12 p32))

(assert (edge p10 p40))
(assert (edge p11 p41))
(assert (edge p12 p42))

(assert (edge p20 p30))
(assert (edge p21 p31))
(assert (edge p22 p32))

(assert (edge p20 p40))
(assert (edge p21 p41))
(assert (edge p22 p42))
(check-sat)
(get-model)
