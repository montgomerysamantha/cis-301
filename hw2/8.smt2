; p -> (q ^ r)

(declare-const p Bool)
(declare-const q Bool)
(declare-const r Bool)
(assert (=> p (and q r))) ; p=f q=f r=t
(assert (not (and (and (not p) (not q)) r))) ; p=f q=t r=t
(assert (not (and (not p) q r))) ; p=f q=f r=f
(assert (not (and (not p) (not q) (not r)))) ; p=f q=t r=f
(assert (not (and (not p) q (not r)))) ; p=t q=t r=t
(check-sat)
(get-model)

(exit)