
(set-info :smt-lib-version 2.6)
(set-logic QF_ANIA)
(set-info :source |
Generated by: Alex Ozdemir
Generated on: 2021-12-13
Generator: Z3Py API
Application: Soundness counterexamples for a cryptographic argument
Target solver: cvc5, Z3

# The special soundness of PLONK's grand product argument

Let F be a prime-order field and n a natural less than F's size. Let n = {1,
2, .., n} be a subset of F. The PLONK[1] grand product argument relies on the
fact that given a permutation pi: [n] -> [n] and functions A, B: [n] -> [n],

    prod_i (A(i) + beta * i + gamma) = prod_i (B(i) + beta * pi(i) + gamma)

holds for random beta, gamma in F with good probability only when A composed
with pi is B.

Does this implication hold in a deterministic setting, where the above is
checked for distinct---but non-random---beta and gamma?

If it is checked for n+1 distinct values of beta, and for each value of beta,
n+1 distinct values of gamma, then yes. One can prove this.

If it is checked for 2 distinct values of beta, and for each value of beta, n+1
distinct values of gamma, then no.

This series of benchmarks checks the implication holds
* for varying n
* for a fixed permutation pi = (2 3 ... n 1)
* for all A and B
  * that must be equal ("same") or may differ ("diff")
* for all distinct 2 ("unsound") or n+1 ("sound") beta values

rather than instantiating gamma explicitly, we just check that the multisets

    {{A[i] + beta * i}}_i  ==  {{B[i] + beta * pi(i)}}_i

are equal.

[1]: https://eprint.iacr.org/2019/953

|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "crafted")
(set-info :status sat)
; benchmark generated from python API
(declare-fun w__0 () Int)
(declare-fun v__0 () Int)
(declare-fun w__1 () Int)
(declare-fun v__1 () Int)
(declare-fun w__2 () Int)
(declare-fun v__2 () Int)
(declare-fun w__3 () Int)
(declare-fun v__3 () Int)
(declare-fun w__4 () Int)
(declare-fun v__4 () Int)
(declare-fun w__5 () Int)
(declare-fun v__5 () Int)
(declare-fun w__6 () Int)
(declare-fun v__6 () Int)
(declare-fun w__7 () Int)
(declare-fun v__7 () Int)
(declare-fun w__8 () Int)
(declare-fun v__8 () Int)
(declare-fun w__9 () Int)
(declare-fun v__9 () Int)
(declare-fun b__1 () Int)
(declare-fun b__0 () Int)
(declare-fun start () (Array Int Int))
(assert
 (= v__0 w__0))
(assert
 (= v__1 w__1))
(assert
 (= v__2 w__2))
(assert
 (= v__3 w__3))
(assert
 (= v__4 w__4))
(assert
 (= v__5 w__5))
(assert
 (= v__6 w__6))
(assert
 (= v__7 w__7))
(assert
 (= v__8 w__8))
(assert
 (= v__9 w__9))
(assert
 (and (distinct b__0 b__1) true))
(assert
 (>= w__0 0))
(assert
 (>= v__0 0))
(assert
 (<= w__0 10))
(assert
 (<= v__0 10))
(assert
 (>= w__1 0))
(assert
 (>= v__1 0))
(assert
 (<= w__1 10))
(assert
 (<= v__1 10))
(assert
 (>= w__2 0))
(assert
 (>= v__2 0))
(assert
 (<= w__2 10))
(assert
 (<= v__2 10))
(assert
 (>= w__3 0))
(assert
 (>= v__3 0))
(assert
 (<= w__3 10))
(assert
 (<= v__3 10))
(assert
 (>= w__4 0))
(assert
 (>= v__4 0))
(assert
 (<= w__4 10))
(assert
 (<= v__4 10))
(assert
 (>= w__5 0))
(assert
 (>= v__5 0))
(assert
 (<= w__5 10))
(assert
 (<= v__5 10))
(assert
 (>= w__6 0))
(assert
 (>= v__6 0))
(assert
 (<= w__6 10))
(assert
 (<= v__6 10))
(assert
 (>= w__7 0))
(assert
 (>= v__7 0))
(assert
 (<= w__7 10))
(assert
 (<= v__7 10))
(assert
 (>= w__8 0))
(assert
 (>= v__8 0))
(assert
 (<= w__8 10))
(assert
 (<= v__8 10))
(assert
 (>= w__9 0))
(assert
 (>= v__9 0))
(assert
 (<= w__9 10))
(assert
 (<= v__9 10))
(assert
 (let ((?x118 (* b__0 1)))
 (let ((?x57 (+ v__9 ?x118)))
 (let ((?x1113 (* b__0 10)))
 (let ((?x857 (+ v__8 ?x1113)))
 (let ((?x1085 (* b__0 9)))
 (let ((?x1004 (+ v__7 ?x1085)))
 (let ((?x452 (* b__0 8)))
 (let ((?x451 (+ v__6 ?x452)))
 (let ((?x256 (* b__0 7)))
 (let ((?x544 (+ v__5 ?x256)))
 (let ((?x408 (* b__0 6)))
 (let ((?x280 (+ v__4 ?x408)))
 (let ((?x978 (* b__0 5)))
 (let ((?x160 (+ v__3 ?x978)))
 (let ((?x839 (* b__0 4)))
 (let ((?x508 (+ v__2 ?x839)))
 (let ((?x681 (* b__0 3)))
 (let ((?x86 (+ v__1 ?x681)))
 (let ((?x1108 (* b__0 2)))
 (let ((?x545 (+ v__0 ?x1108)))
 (let ((?x712 (store start ?x545 (+ (select start ?x545) 1))))
 (let ((?x1051 (store ?x712 ?x86 (+ (select ?x712 ?x86) 1))))
 (let ((?x685 (store ?x1051 ?x508 (+ (select ?x1051 ?x508) 1))))
 (let ((?x1401 (store ?x685 ?x160 (+ (select ?x685 ?x160) 1))))
 (let ((?x459 (store ?x1401 ?x280 (+ (select ?x1401 ?x280) 1))))
 (let ((?x150 (store ?x459 ?x544 (+ (select ?x459 ?x544) 1))))
 (let ((?x831 (store ?x150 ?x451 (+ (select ?x150 ?x451) 1))))
 (let ((?x562 (store ?x831 ?x1004 (+ (select ?x831 ?x1004) 1))))
 (let ((?x593 (store ?x562 ?x857 (+ (select ?x562 ?x857) 1))))
 (let ((?x693 (store ?x593 ?x57 (+ (select ?x593 ?x57) 1))))
 (let ((?x521 (+ w__9 ?x1113)))
 (let ((?x1025 (+ w__8 ?x1085)))
 (let ((?x1697 (+ w__7 ?x452)))
 (let ((?x670 (+ w__6 ?x256)))
 (let ((?x619 (+ w__5 ?x408)))
 (let ((?x431 (+ w__4 ?x978)))
 (let ((?x710 (+ w__3 ?x839)))
 (let ((?x709 (+ w__2 ?x681)))
 (let ((?x501 (+ w__1 ?x1108)))
 (let ((?x687 (+ w__0 ?x118)))
 (let ((?x1107 (store start ?x687 (+ (select start ?x687) 1))))
 (let ((?x963 (store ?x1107 ?x501 (+ (select ?x1107 ?x501) 1))))
 (let ((?x913 (store ?x963 ?x709 (+ (select ?x963 ?x709) 1))))
 (let ((?x643 (store ?x913 ?x710 (+ (select ?x913 ?x710) 1))))
 (let ((?x480 (store ?x643 ?x431 (+ (select ?x643 ?x431) 1))))
 (let ((?x319 (store ?x480 ?x619 (+ (select ?x480 ?x619) 1))))
 (let ((?x836 (store ?x319 ?x670 (+ (select ?x319 ?x670) 1))))
 (let ((?x1057 (store ?x836 ?x1697 (+ (select ?x836 ?x1697) 1))))
 (let ((?x1111 (store ?x1057 ?x1025 (+ (select ?x1057 ?x1025) 1))))
 (let ((?x129 (store ?x1111 ?x521 (+ (select ?x1111 ?x521) 1))))
 (= ?x129 ?x693))))))))))))))))))))))))))))))))))))))))))))))))))))
(assert
 (let ((?x456 (* b__1 1)))
 (let ((?x1712 (+ v__9 ?x456)))
 (let ((?x1686 (* b__1 10)))
 (let ((?x1721 (+ v__8 ?x1686)))
 (let ((?x489 (* b__1 9)))
 (let ((?x206 (+ v__7 ?x489)))
 (let ((?x1399 (* b__1 8)))
 (let ((?x1398 (+ v__6 ?x1399)))
 (let ((?x1671 (* b__1 7)))
 (let ((?x1676 (+ v__5 ?x1671)))
 (let ((?x1225 (* b__1 6)))
 (let ((?x95 (+ v__4 ?x1225)))
 (let ((?x649 (* b__1 5)))
 (let ((?x1391 (+ v__3 ?x649)))
 (let ((?x1387 (* b__1 4)))
 (let ((?x1356 (+ v__2 ?x1387)))
 (let ((?x1193 (* b__1 3)))
 (let ((?x1194 (+ v__1 ?x1193)))
 (let ((?x1215 (* b__1 2)))
 (let ((?x282 (+ v__0 ?x1215)))
 (let ((?x1083 (store start ?x282 (+ (select start ?x282) 1))))
 (let ((?x331 (store ?x1083 ?x1194 (+ (select ?x1083 ?x1194) 1))))
 (let ((?x600 (store ?x331 ?x1356 (+ (select ?x331 ?x1356) 1))))
 (let ((?x102 (store ?x600 ?x1391 (+ (select ?x600 ?x1391) 1))))
 (let ((?x1701 (store ?x102 ?x95 (+ (select ?x102 ?x95) 1))))
 (let ((?x1715 (store ?x1701 ?x1676 (+ (select ?x1701 ?x1676) 1))))
 (let ((?x1381 (store ?x1715 ?x1398 (+ (select ?x1715 ?x1398) 1))))
 (let ((?x326 (store ?x1381 ?x206 (+ (select ?x1381 ?x206) 1))))
 (let ((?x1704 (store ?x326 ?x1721 (+ (select ?x326 ?x1721) 1))))
 (let ((?x1717 (store ?x1704 ?x1712 (+ (select ?x1704 ?x1712) 1))))
 (let ((?x1666 (+ w__9 ?x1686)))
 (let ((?x1383 (+ w__8 ?x489)))
 (let ((?x385 (+ w__7 ?x1399)))
 (let ((?x1195 (+ w__6 ?x1671)))
 (let ((?x1705 (+ w__5 ?x1225)))
 (let ((?x21 (+ w__4 ?x649)))
 (let ((?x1374 (+ w__3 ?x1387)))
 (let ((?x646 (+ w__2 ?x1193)))
 (let ((?x1572 (+ w__1 ?x1215)))
 (let ((?x985 (+ w__0 ?x456)))
 (let ((?x377 (store start ?x985 (+ (select start ?x985) 1))))
 (let ((?x269 (store ?x377 ?x1572 (+ (select ?x377 ?x1572) 1))))
 (let ((?x878 (store ?x269 ?x646 (+ (select ?x269 ?x646) 1))))
 (let ((?x1009 (store ?x878 ?x1374 (+ (select ?x878 ?x1374) 1))))
 (let ((?x392 (store ?x1009 ?x21 (+ (select ?x1009 ?x21) 1))))
 (let ((?x1708 (store ?x392 ?x1705 (+ (select ?x392 ?x1705) 1))))
 (let ((?x875 (store ?x1708 ?x1195 (+ (select ?x1708 ?x1195) 1))))
 (let ((?x993 (store ?x875 ?x385 (+ (select ?x875 ?x385) 1))))
 (let ((?x921 (store ?x993 ?x1383 (+ (select ?x993 ?x1383) 1))))
 (let ((?x1711 (store ?x921 ?x1666 (+ (select ?x921 ?x1666) 1))))
 (= ?x1711 ?x1717))))))))))))))))))))))))))))))))))))))))))))))))))))
(assert
 (let (($x754 (and (= w__1 v__0) (= w__2 v__1) (= w__3 v__2) (= w__4 v__3) (= w__5 v__4) (= w__6 v__5) (= w__7 v__6) (= w__8 v__7) (= w__9 v__8) (= w__0 v__9))))
 (not $x754)))
(check-sat)
(exit)