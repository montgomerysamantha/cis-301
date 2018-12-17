; p = current mode is OFF mode
; q = current mode is PAUSED
; r = pump is infusing a drug

(declare-const p Bool)
(declare-const q Bool)
(declare-const r Bool)
(assert (not (= (=> p (not (or q r))) (=> p (and (not q) (not r))))))
(check-sat)
(exit)

; When you go to check-sat of this assertion, it is unsat. This proves that
; this is a tautology (meaning every case is true, which will be sat) because we appended the
; not operator onto the very beginning of the statement, making every single
; case false (aka unsat)