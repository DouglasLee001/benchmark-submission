
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
(declare-fun w__6 () Int)
(declare-fun v__6 () Int)
(declare-fun w__7 () Int)
(declare-fun v__7 () Int)
(declare-fun w__8 () Int)
(declare-fun v__8 () Int)
(declare-fun w__9 () Int)
(declare-fun v__9 () Int)
(declare-fun start () (Array Int Int))
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
 (let ((?x1215 (* b__0 1)))
 (let ((?x921 (+ v__9 ?x1215)))
 (let ((?x309 (* b__0 10)))
 (let ((?x875 (+ v__8 ?x309)))
 (let ((?x222 (* b__0 9)))
 (let ((?x130 (+ v__7 ?x222)))
 (let ((?x646 (* b__0 8)))
 (let ((?x969 (+ v__6 ?x646)))
 (let ((?x1717 (* b__0 7)))
 (let ((?x985 (+ v__5 ?x1717)))
 (let ((?x1019 (* b__0 6)))
 (let ((?x1007 (+ v__4 ?x1019)))
 (let ((?x1714 (* b__0 5)))
 (let ((?x1715 (+ v__3 ?x1714)))
 (let ((?x102 (* b__0 4)))
 (let ((?x1225 (+ v__2 ?x102)))
 (let ((?x1387 (* b__0 3)))
 (let ((?x1356 (+ v__1 ?x1387)))
 (let ((?x1082 (* b__0 2)))
 (let ((?x1083 (+ v__0 ?x1082)))
 (let ((?x1193 (store start ?x1083 (+ (select start ?x1083) 1))))
 (let ((?x600 (store ?x1193 ?x1356 (+ (select ?x1193 ?x1356) 1))))
 (let ((?x1661 (store ?x600 ?x1225 (+ (select ?x600 ?x1225) 1))))
 (let ((?x1397 (store ?x1661 ?x1715 (+ (select ?x1661 ?x1715) 1))))
 (let ((?x1702 (store ?x1397 ?x1007 (+ (select ?x1397 ?x1007) 1))))
 (let ((?x377 (store ?x1702 ?x985 (+ (select ?x1702 ?x985) 1))))
 (let ((?x1374 (store ?x377 ?x969 (+ (select ?x377 ?x969) 1))))
 (let ((?x1706 (store ?x1374 ?x130 (+ (select ?x1374 ?x130) 1))))
 (let ((?x1346 (store ?x1706 ?x875 (+ (select ?x1706 ?x875) 1))))
 (let ((?x1711 (store ?x1346 ?x921 (+ (select ?x1346 ?x921) 1))))
 (let ((?x993 (+ w__9 ?x309)))
 (let ((?x1707 (+ w__8 ?x222)))
 (let ((?x461 (+ w__7 ?x646)))
 (let ((?x1572 (+ w__6 ?x1717)))
 (let ((?x1703 (+ w__5 ?x1019)))
 (let ((?x1394 (+ w__4 ?x1714)))
 (let ((?x1701 (+ w__3 ?x102)))
 (let ((?x649 (+ w__2 ?x1387)))
 (let ((?x1194 (+ w__1 ?x1082)))
 (let ((?x282 (+ w__0 ?x1215)))
 (let ((?x161 (store start ?x282 (+ (select start ?x282) 1))))
 (let ((?x331 (store ?x161 ?x1194 (+ (select ?x161 ?x1194) 1))))
 (let ((?x1008 (store ?x331 ?x649 (+ (select ?x331 ?x649) 1))))
 (let ((?x1713 (store ?x1008 ?x1701 (+ (select ?x1008 ?x1701) 1))))
 (let ((?x206 (store ?x1713 ?x1394 (+ (select ?x1713 ?x1394) 1))))
 (let ((?x1681 (store ?x206 ?x1703 (+ (select ?x206 ?x1703) 1))))
 (let ((?x269 (store ?x1681 ?x1572 (+ (select ?x1681 ?x1572) 1))))
 (let ((?x21 (store ?x269 ?x461 (+ (select ?x269 ?x461) 1))))
 (let ((?x71 (store ?x21 ?x1707 (+ (select ?x21 ?x1707) 1))))
 (let ((?x746 (store ?x71 ?x993 (+ (select ?x71 ?x993) 1))))
 (= ?x746 ?x1711))))))))))))))))))))))))))))))))))))))))))))))))))))
(assert
 (let ((?x1003 (* b__1 1)))
 (let ((?x164 (+ v__9 ?x1003)))
 (let ((?x1405 (* b__1 10)))
 (let ((?x1406 (+ v__8 ?x1405)))
 (let ((?x1152 (* b__1 9)))
 (let ((?x1146 (+ v__7 ?x1152)))
 (let ((?x1307 (* b__1 8)))
 (let ((?x1317 (+ v__6 ?x1307)))
 (let ((?x386 (* b__1 7)))
 (let ((?x607 (+ v__5 ?x386)))
 (let ((?x608 (* b__1 6)))
 (let ((?x1074 (+ v__4 ?x608)))
 (let ((?x1098 (* b__1 5)))
 (let ((?x896 (+ v__3 ?x1098)))
 (let ((?x1159 (* b__1 4)))
 (let ((?x1165 (+ v__2 ?x1159)))
 (let ((?x1128 (* b__1 3)))
 (let ((?x1136 (+ v__1 ?x1128)))
 (let ((?x536 (* b__1 2)))
 (let ((?x1301 (+ v__0 ?x536)))
 (let ((?x1143 (store start ?x1301 (+ (select start ?x1301) 1))))
 (let ((?x1180 (store ?x1143 ?x1136 (+ (select ?x1143 ?x1136) 1))))
 (let ((?x1182 (store ?x1180 ?x1165 (+ (select ?x1180 ?x1165) 1))))
 (let ((?x1149 (store ?x1182 ?x896 (+ (select ?x1182 ?x896) 1))))
 (let ((?x1006 (store ?x1149 ?x1074 (+ (select ?x1149 ?x1074) 1))))
 (let ((?x1724 (store ?x1006 ?x607 (+ (select ?x1006 ?x607) 1))))
 (let ((?x381 (store ?x1724 ?x1317 (+ (select ?x1724 ?x1317) 1))))
 (let ((?x1137 (store ?x381 ?x1146 (+ (select ?x381 ?x1146) 1))))
 (let ((?x1157 (store ?x1137 ?x1406 (+ (select ?x1137 ?x1406) 1))))
 (let ((?x174 (store ?x1157 ?x164 (+ (select ?x1157 ?x164) 1))))
 (let ((?x1167 (+ w__9 ?x1405)))
 (let ((?x1135 (+ w__8 ?x1152)))
 (let ((?x260 (+ w__7 ?x1307)))
 (let ((?x1287 (+ w__6 ?x386)))
 (let ((?x902 (+ w__5 ?x608)))
 (let ((?x950 (+ w__4 ?x1098)))
 (let ((?x1183 (+ w__3 ?x1159)))
 (let ((?x577 (+ w__2 ?x1128)))
 (let ((?x1151 (+ w__1 ?x536)))
 (let ((?x67 (+ w__0 ?x1003)))
 (let ((?x45 (store start ?x67 (+ (select start ?x67) 1))))
 (let ((?x1133 (store ?x45 ?x1151 (+ (select ?x45 ?x1151) 1))))
 (let ((?x1158 (store ?x1133 ?x577 (+ (select ?x1133 ?x577) 1))))
 (let ((?x1186 (store ?x1158 ?x1183 (+ (select ?x1158 ?x1183) 1))))
 (let ((?x465 (store ?x1186 ?x950 (+ (select ?x1186 ?x950) 1))))
 (let ((?x872 (store ?x465 ?x902 (+ (select ?x465 ?x902) 1))))
 (let ((?x1306 (store ?x872 ?x1287 (+ (select ?x872 ?x1287) 1))))
 (let ((?x1153 (store ?x1306 ?x260 (+ (select ?x1306 ?x260) 1))))
 (let ((?x1324 (store ?x1153 ?x1135 (+ (select ?x1153 ?x1135) 1))))
 (let ((?x1177 (store ?x1324 ?x1167 (+ (select ?x1324 ?x1167) 1))))
 (= ?x1177 ?x174))))))))))))))))))))))))))))))))))))))))))))))))))))
(assert
 (let (($x1249 (and (= w__1 v__0) (= w__2 v__1) (= w__3 v__2) (= w__4 v__3) (= w__5 v__4) (= w__6 v__5) (= w__7 v__6) (= w__8 v__7) (= w__9 v__8) (= w__0 v__9))))
 (not $x1249)))
(check-sat)
