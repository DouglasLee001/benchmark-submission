
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
(set-info :status unknown)
(declare-fun b__1 () Int)
(declare-fun b__0 () Int)
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
(declare-fun start () (Array Int Int))
(assert
 (and (distinct b__0 b__1) true))
(assert
 (>= w__0 0))
(assert
 (>= v__0 0))
(assert
 (<= w__0 6))
(assert
 (<= v__0 6))
(assert
 (>= w__1 0))
(assert
 (>= v__1 0))
(assert
 (<= w__1 6))
(assert
 (<= v__1 6))
(assert
 (>= w__2 0))
(assert
 (>= v__2 0))
(assert
 (<= w__2 6))
(assert
 (<= v__2 6))
(assert
 (>= w__3 0))
(assert
 (>= v__3 0))
(assert
 (<= w__3 6))
(assert
 (<= v__3 6))
(assert
 (>= w__4 0))
(assert
 (>= v__4 0))
(assert
 (<= w__4 6))
(assert
 (<= v__4 6))
(assert
 (>= w__5 0))
(assert
 (>= v__5 0))
(assert
 (<= w__5 6))
(assert
 (<= v__5 6))
(assert
 (let ((?x163 (* b__0 1)))
 (let ((?x159 (+ v__5 ?x163)))
 (let ((?x299 (* b__0 6)))
 (let ((?x273 (+ v__4 ?x299)))
 (let ((?x268 (* b__0 5)))
 (let ((?x269 (+ v__3 ?x268)))
 (let ((?x309 (* b__0 4)))
 (let ((?x129 (+ v__2 ?x309)))
 (let ((?x237 (* b__0 3)))
 (let ((?x103 (+ v__1 ?x237)))
 (let ((?x289 (* b__0 2)))
 (let ((?x288 (+ v__0 ?x289)))
 (let ((?x321 (store start ?x288 (+ (select start ?x288) 1))))
 (let ((?x78 (store ?x321 ?x103 (+ (select ?x321 ?x103) 1))))
 (let ((?x31 (store ?x78 ?x129 (+ (select ?x78 ?x129) 1))))
 (let ((?x28 (store ?x31 ?x269 (+ (select ?x31 ?x269) 1))))
 (let ((?x365 (store ?x28 ?x273 (+ (select ?x28 ?x273) 1))))
 (let ((?x174 (store ?x365 ?x159 (+ (select ?x365 ?x159) 1))))
 (let ((?x298 (+ w__5 ?x299)))
 (let ((?x303 (+ w__4 ?x268)))
 (let ((?x70 (+ w__3 ?x309)))
 (let ((?x34 (+ w__2 ?x237)))
 (let ((?x72 (+ w__1 ?x289)))
 (let ((?x236 (+ w__0 ?x163)))
 (let ((?x300 (store start ?x236 (+ (select start ?x236) 1))))
 (let ((?x311 (store ?x300 ?x72 (+ (select ?x300 ?x72) 1))))
 (let ((?x308 (store ?x311 ?x34 (+ (select ?x311 ?x34) 1))))
 (let ((?x367 (store ?x308 ?x70 (+ (select ?x308 ?x70) 1))))
 (let ((?x384 (store ?x367 ?x303 (+ (select ?x367 ?x303) 1))))
 (let ((?x82 (store ?x384 ?x298 (+ (select ?x384 ?x298) 1))))
 (= ?x82 ?x174))))))))))))))))))))))))))))))))
(assert
 (let ((?x69 (* b__1 1)))
 (let ((?x563 (+ v__5 ?x69)))
 (let ((?x161 (* b__1 6)))
 (let ((?x542 (+ v__4 ?x161)))
 (let ((?x67 (* b__1 5)))
 (let ((?x193 (+ v__3 ?x67)))
 (let ((?x345 (* b__1 4)))
 (let ((?x15 (+ v__2 ?x345)))
 (let ((?x369 (* b__1 3)))
 (let ((?x414 (+ v__1 ?x369)))
 (let ((?x600 (* b__1 2)))
 (let ((?x582 (+ v__0 ?x600)))
 (let ((?x606 (store start ?x582 (+ (select start ?x582) 1))))
 (let ((?x213 (store ?x606 ?x414 (+ (select ?x606 ?x414) 1))))
 (let ((?x234 (store ?x213 ?x15 (+ (select ?x213 ?x15) 1))))
 (let ((?x316 (store ?x234 ?x193 (+ (select ?x234 ?x193) 1))))
 (let ((?x545 (store ?x316 ?x542 (+ (select ?x316 ?x542) 1))))
 (let ((?x531 (store ?x545 ?x563 (+ (select ?x545 ?x563) 1))))
 (let ((?x550 (+ w__5 ?x161)))
 (let ((?x533 (+ w__4 ?x67)))
 (let ((?x353 (+ w__3 ?x345)))
 (let ((?x191 (+ w__2 ?x369)))
 (let ((?x607 (+ w__1 ?x600)))
 (let ((?x147 (+ w__0 ?x69)))
 (let ((?x599 (store start ?x147 (+ (select start ?x147) 1))))
 (let ((?x387 (store ?x599 ?x607 (+ (select ?x599 ?x607) 1))))
 (let ((?x333 (store ?x387 ?x191 (+ (select ?x387 ?x191) 1))))
 (let ((?x200 (store ?x333 ?x353 (+ (select ?x333 ?x353) 1))))
 (let ((?x243 (store ?x200 ?x533 (+ (select ?x200 ?x533) 1))))
 (let ((?x562 (store ?x243 ?x550 (+ (select ?x243 ?x550) 1))))
 (= ?x562 ?x531))))))))))))))))))))))))))))))))
(assert
 (let (($x68 (and (= w__1 v__0) (= w__2 v__1) (= w__3 v__2) (= w__4 v__3) (= w__5 v__4) (= w__0 v__5))))
 (not $x68)))
(check-sat)
