
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
(set-info :status unsat)
; benchmark generated from python API
(set-info :status unknown)
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
(declare-fun b__8 () Int)
(declare-fun b__7 () Int)
(declare-fun b__6 () Int)
(declare-fun b__5 () Int)
(declare-fun b__4 () Int)
(declare-fun b__3 () Int)
(declare-fun b__2 () Int)
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
 (and (distinct b__0 b__1 b__2 b__3 b__4 b__5 b__6 b__7 b__8) true))
(assert
 (>= w__0 0))
(assert
 (>= v__0 0))
(assert
 (<= w__0 8))
(assert
 (<= v__0 8))
(assert
 (>= w__1 0))
(assert
 (>= v__1 0))
(assert
 (<= w__1 8))
(assert
 (<= v__1 8))
(assert
 (>= w__2 0))
(assert
 (>= v__2 0))
(assert
 (<= w__2 8))
(assert
 (<= v__2 8))
(assert
 (>= w__3 0))
(assert
 (>= v__3 0))
(assert
 (<= w__3 8))
(assert
 (<= v__3 8))
(assert
 (>= w__4 0))
(assert
 (>= v__4 0))
(assert
 (<= w__4 8))
(assert
 (<= v__4 8))
(assert
 (>= w__5 0))
(assert
 (>= v__5 0))
(assert
 (<= w__5 8))
(assert
 (<= v__5 8))
(assert
 (>= w__6 0))
(assert
 (>= v__6 0))
(assert
 (<= w__6 8))
(assert
 (<= v__6 8))
(assert
 (>= w__7 0))
(assert
 (>= v__7 0))
(assert
 (<= w__7 8))
(assert
 (<= v__7 8))
(assert
 (let ((?x807 (* b__0 1)))
 (let ((?x383 (+ v__7 ?x807)))
 (let ((?x1085 (* b__0 8)))
 (let ((?x43 (+ v__6 ?x1085)))
 (let ((?x182 (* b__0 7)))
 (let ((?x723 (+ v__5 ?x182)))
 (let ((?x539 (* b__0 6)))
 (let ((?x232 (+ v__4 ?x539)))
 (let ((?x942 (* b__0 5)))
 (let ((?x947 (+ v__3 ?x942)))
 (let ((?x268 (* b__0 4)))
 (let ((?x637 (+ v__2 ?x268)))
 (let ((?x417 (* b__0 3)))
 (let ((?x54 (+ v__1 ?x417)))
 (let ((?x813 (* b__0 2)))
 (let ((?x808 (+ v__0 ?x813)))
 (let ((?x711 (store start ?x808 (+ (select start ?x808) 1))))
 (let ((?x177 (store ?x711 ?x54 (+ (select ?x711 ?x54) 1))))
 (let ((?x789 (store ?x177 ?x637 (+ (select ?x177 ?x637) 1))))
 (let ((?x714 (store ?x789 ?x947 (+ (select ?x789 ?x947) 1))))
 (let ((?x721 (store ?x714 ?x232 (+ (select ?x714 ?x232) 1))))
 (let ((?x834 (store ?x721 ?x723 (+ (select ?x721 ?x723) 1))))
 (let ((?x849 (store ?x834 ?x43 (+ (select ?x834 ?x43) 1))))
 (let ((?x798 (store ?x849 ?x383 (+ (select ?x849 ?x383) 1))))
 (let ((?x160 (+ w__7 ?x1085)))
 (let ((?x546 (+ w__6 ?x182)))
 (let ((?x800 (+ w__5 ?x539)))
 (let ((?x162 (+ w__4 ?x942)))
 (let ((?x851 (+ w__3 ?x268)))
 (let ((?x1070 (+ w__2 ?x417)))
 (let ((?x601 (+ w__1 ?x813)))
 (let ((?x263 (+ w__0 ?x807)))
 (let ((?x577 (store start ?x263 (+ (select start ?x263) 1))))
 (let ((?x36 (store ?x577 ?x601 (+ (select ?x577 ?x601) 1))))
 (let ((?x288 (store ?x36 ?x1070 (+ (select ?x36 ?x1070) 1))))
 (let ((?x941 (store ?x288 ?x851 (+ (select ?x288 ?x851) 1))))
 (let ((?x25 (store ?x941 ?x162 (+ (select ?x941 ?x162) 1))))
 (let ((?x552 (store ?x25 ?x800 (+ (select ?x25 ?x800) 1))))
 (let ((?x1057 (store ?x552 ?x546 (+ (select ?x552 ?x546) 1))))
 (let ((?x211 (store ?x1057 ?x160 (+ (select ?x1057 ?x160) 1))))
 (= ?x211 ?x798))))))))))))))))))))))))))))))))))))))))))
(assert
 (let ((?x946 (* b__1 1)))
 (let ((?x1071 (+ v__7 ?x946)))
 (let ((?x534 (* b__1 8)))
 (let ((?x496 (+ v__6 ?x534)))
 (let ((?x943 (* b__1 7)))
 (let ((?x633 (+ v__5 ?x943)))
 (let ((?x845 (* b__1 6)))
 (let ((?x121 (+ v__4 ?x845)))
 (let ((?x971 (* b__1 5)))
 (let ((?x625 (+ v__3 ?x971)))
 (let ((?x365 (* b__1 4)))
 (let ((?x99 (+ v__2 ?x365)))
 (let ((?x33 (* b__1 3)))
 (let ((?x435 (+ v__1 ?x33)))
 (let ((?x555 (* b__1 2)))
 (let ((?x501 (+ v__0 ?x555)))
 (let ((?x183 (store start ?x501 (+ (select start ?x501) 1))))
 (let ((?x964 (store ?x183 ?x435 (+ (select ?x183 ?x435) 1))))
 (let ((?x112 (store ?x964 ?x99 (+ (select ?x964 ?x99) 1))))
 (let ((?x15 (store ?x112 ?x625 (+ (select ?x112 ?x625) 1))))
 (let ((?x629 (store ?x15 ?x121 (+ (select ?x15 ?x121) 1))))
 (let ((?x945 (store ?x629 ?x633 (+ (select ?x629 ?x633) 1))))
 (let ((?x632 (store ?x945 ?x496 (+ (select ?x945 ?x496) 1))))
 (let ((?x1061 (store ?x632 ?x1071 (+ (select ?x632 ?x1071) 1))))
 (let ((?x677 (+ w__7 ?x534)))
 (let ((?x1047 (+ w__6 ?x943)))
 (let ((?x627 (+ w__5 ?x845)))
 (let ((?x795 (+ w__4 ?x971)))
 (let ((?x951 (+ w__3 ?x365)))
 (let ((?x965 (+ w__2 ?x33)))
 (let ((?x376 (+ w__1 ?x555)))
 (let ((?x110 (+ w__0 ?x946)))
 (let ((?x326 (store start ?x110 (+ (select start ?x110) 1))))
 (let ((?x100 (store ?x326 ?x376 (+ (select ?x326 ?x376) 1))))
 (let ((?x165 (store ?x100 ?x965 (+ (select ?x100 ?x965) 1))))
 (let ((?x960 (store ?x165 ?x951 (+ (select ?x165 ?x951) 1))))
 (let ((?x647 (store ?x960 ?x795 (+ (select ?x960 ?x795) 1))))
 (let ((?x210 (store ?x647 ?x627 (+ (select ?x647 ?x627) 1))))
 (let ((?x1069 (store ?x210 ?x1047 (+ (select ?x210 ?x1047) 1))))
 (let ((?x150 (store ?x1069 ?x677 (+ (select ?x1069 ?x677) 1))))
 (= ?x150 ?x1061))))))))))))))))))))))))))))))))))))))))))
(assert
 (let ((?x250 (* b__2 1)))
 (let ((?x222 (+ v__7 ?x250)))
 (let ((?x506 (* b__2 8)))
 (let ((?x507 (+ v__6 ?x506)))
 (let ((?x217 (* b__2 7)))
 (let ((?x528 (+ v__5 ?x217)))
 (let ((?x223 (* b__2 6)))
 (let ((?x793 (+ v__4 ?x223)))
 (let ((?x770 (* b__2 5)))
 (let ((?x771 (+ v__3 ?x770)))
 (let ((?x347 (* b__2 4)))
 (let ((?x485 (+ v__2 ?x347)))
 (let ((?x541 (* b__2 3)))
 (let ((?x140 (+ v__1 ?x541)))
 (let ((?x767 (* b__2 2)))
 (let ((?x768 (+ v__0 ?x767)))
 (let ((?x754 (store start ?x768 (+ (select start ?x768) 1))))
 (let ((?x231 (store ?x754 ?x140 (+ (select ?x754 ?x140) 1))))
 (let ((?x487 (store ?x231 ?x485 (+ (select ?x231 ?x485) 1))))
 (let ((?x744 (store ?x487 ?x771 (+ (select ?x487 ?x771) 1))))
 (let ((?x14 (store ?x744 ?x793 (+ (select ?x744 ?x793) 1))))
 (let ((?x83 (store ?x14 ?x528 (+ (select ?x14 ?x528) 1))))
 (let ((?x130 (store ?x83 ?x507 (+ (select ?x83 ?x507) 1))))
 (let ((?x447 (store ?x130 ?x222 (+ (select ?x130 ?x222) 1))))
 (let ((?x18 (+ w__7 ?x506)))
 (let ((?x616 (+ w__6 ?x217)))
 (let ((?x415 (+ w__5 ?x223)))
 (let ((?x735 (+ w__4 ?x770)))
 (let ((?x488 (+ w__3 ?x347)))
 (let ((?x258 (+ w__2 ?x541)))
 (let ((?x755 (+ w__1 ?x767)))
 (let ((?x103 (+ w__0 ?x250)))
 (let ((?x591 (store start ?x103 (+ (select start ?x103) 1))))
 (let ((?x568 (store ?x591 ?x755 (+ (select ?x591 ?x755) 1))))
 (let ((?x19 (store ?x568 ?x258 (+ (select ?x568 ?x258) 1))))
 (let ((?x769 (store ?x19 ?x488 (+ (select ?x19 ?x488) 1))))
 (let ((?x622 (store ?x769 ?x735 (+ (select ?x769 ?x735) 1))))
 (let ((?x530 (store ?x622 ?x415 (+ (select ?x622 ?x415) 1))))
 (let ((?x497 (store ?x530 ?x616 (+ (select ?x530 ?x616) 1))))
 (let ((?x550 (store ?x497 ?x18 (+ (select ?x497 ?x18) 1))))
 (= ?x550 ?x447))))))))))))))))))))))))))))))))))))))))))
(assert
 (let ((?x1005 (* b__3 1)))
 (let ((?x566 (+ v__7 ?x1005)))
 (let ((?x717 (* b__3 8)))
 (let ((?x545 (+ v__6 ?x717)))
 (let ((?x865 (* b__3 7)))
 (let ((?x1106 (+ v__5 ?x865)))
 (let ((?x882 (* b__3 6)))
 (let ((?x881 (+ v__4 ?x882)))
 (let ((?x899 (* b__3 5)))
 (let ((?x898 (+ v__3 ?x899)))
 (let ((?x859 (* b__3 4)))
 (let ((?x858 (+ v__2 ?x859)))
 (let ((?x1010 (* b__3 3)))
 (let ((?x1016 (+ v__1 ?x1010)))
 (let ((?x1023 (* b__3 2)))
 (let ((?x1039 (+ v__0 ?x1023)))
 (let ((?x980 (store start ?x1039 (+ (select start ?x1039) 1))))
 (let ((?x1028 (store ?x980 ?x1016 (+ (select ?x980 ?x1016) 1))))
 (let ((?x908 (store ?x1028 ?x858 (+ (select ?x1028 ?x858) 1))))
 (let ((?x891 (store ?x908 ?x898 (+ (select ?x908 ?x898) 1))))
 (let ((?x874 (store ?x891 ?x881 (+ (select ?x891 ?x881) 1))))
 (let ((?x71 (store ?x874 ?x1106 (+ (select ?x874 ?x1106) 1))))
 (let ((?x48 (store ?x71 ?x545 (+ (select ?x71 ?x545) 1))))
 (let ((?x377 (store ?x48 ?x566 (+ (select ?x48 ?x566) 1))))
 (let ((?x386 (+ w__7 ?x717)))
 (let ((?x141 (+ w__6 ?x865)))
 (let ((?x873 (+ w__5 ?x882)))
 (let ((?x890 (+ w__4 ?x899)))
 (let ((?x907 (+ w__3 ?x859)))
 (let ((?x1035 (+ w__2 ?x1010)))
 (let ((?x991 (+ w__1 ?x1023)))
 (let ((?x1006 (+ w__0 ?x1005)))
 (let ((?x1022 (store start ?x1006 (+ (select start ?x1006) 1))))
 (let ((?x999 (store ?x1022 ?x991 (+ (select ?x1022 ?x991) 1))))
 (let ((?x860 (store ?x999 ?x1035 (+ (select ?x999 ?x1035) 1))))
 (let ((?x900 (store ?x860 ?x907 (+ (select ?x860 ?x907) 1))))
 (let ((?x883 (store ?x900 ?x890 (+ (select ?x900 ?x890) 1))))
 (let ((?x866 (store ?x883 ?x873 (+ (select ?x883 ?x873) 1))))
 (let ((?x353 (store ?x866 ?x141 (+ (select ?x866 ?x141) 1))))
 (let ((?x444 (store ?x353 ?x386 (+ (select ?x353 ?x386) 1))))
 (= ?x444 ?x377))))))))))))))))))))))))))))))))))))))))))
(assert
 (let ((?x553 (* b__4 1)))
 (let ((?x463 (+ v__7 ?x553)))
 (let ((?x610 (* b__4 8)))
 (let ((?x1073 (+ v__6 ?x610)))
 (let ((?x358 (* b__4 7)))
 (let ((?x185 (+ v__5 ?x358)))
 (let ((?x571 (* b__4 6)))
 (let ((?x958 (+ v__4 ?x571)))
 (let ((?x390 (* b__4 5)))
 (let ((?x559 (+ v__3 ?x390)))
 (let ((?x480 (* b__4 4)))
 (let ((?x269 (+ v__2 ?x480)))
 (let ((?x86 (* b__4 3)))
 (let ((?x238 (+ v__1 ?x86)))
 (let ((?x143 (* b__4 2)))
 (let ((?x595 (+ v__0 ?x143)))
 (let ((?x499 (store start ?x595 (+ (select start ?x595) 1))))
 (let ((?x586 (store ?x499 ?x238 (+ (select ?x499 ?x238) 1))))
 (let ((?x234 (store ?x586 ?x269 (+ (select ?x586 ?x269) 1))))
 (let ((?x703 (store ?x234 ?x559 (+ (select ?x234 ?x559) 1))))
 (let ((?x1067 (store ?x703 ?x958 (+ (select ?x703 ?x958) 1))))
 (let ((?x512 (store ?x1067 ?x185 (+ (select ?x1067 ?x185) 1))))
 (let ((?x157 (store ?x512 ?x1073 (+ (select ?x512 ?x1073) 1))))
 (let ((?x702 (store ?x157 ?x463 (+ (select ?x157 ?x463) 1))))
 (let ((?x159 (+ w__7 ?x610)))
 (let ((?x511 (+ w__6 ?x358)))
 (let ((?x598 (+ w__5 ?x571)))
 (let ((?x422 (+ w__4 ?x390)))
 (let ((?x408 (+ w__3 ?x480)))
 (let ((?x179 (+ w__2 ?x86)))
 (let ((?x523 (+ w__1 ?x143)))
 (let ((?x570 (+ w__0 ?x553)))
 (let ((?x615 (store start ?x570 (+ (select start ?x570) 1))))
 (let ((?x446 (store ?x615 ?x523 (+ (select ?x615 ?x523) 1))))
 (let ((?x1051 (store ?x446 ?x179 (+ (select ?x446 ?x179) 1))))
 (let ((?x279 (store ?x1051 ?x408 (+ (select ?x1051 ?x408) 1))))
 (let ((?x1063 (store ?x279 ?x422 (+ (select ?x279 ?x422) 1))))
 (let ((?x477 (store ?x1063 ?x598 (+ (select ?x1063 ?x598) 1))))
 (let ((?x186 (store ?x477 ?x511 (+ (select ?x477 ?x511) 1))))
 (let ((?x16 (store ?x186 ?x159 (+ (select ?x186 ?x159) 1))))
 (= ?x16 ?x702))))))))))))))))))))))))))))))))))))))))))
(assert
 (let ((?x1087 (* b__5 1)))
 (let ((?x1096 (+ v__7 ?x1087)))
 (let ((?x1097 (* b__5 8)))
 (let ((?x1101 (+ v__6 ?x1097)))
 (let ((?x1099 (* b__5 7)))
 (let ((?x831 (+ v__5 ?x1099)))
 (let ((?x895 (* b__5 6)))
 (let ((?x229 (+ v__4 ?x895)))
 (let ((?x719 (* b__5 5)))
 (let ((?x95 (+ v__3 ?x719)))
 (let ((?x773 (* b__5 4)))
 (let ((?x749 (+ v__2 ?x773)))
 (let ((?x1044 (* b__5 3)))
 (let ((?x1048 (+ v__1 ?x1044)))
 (let ((?x1092 (* b__5 2)))
 (let ((?x245 (+ v__0 ?x1092)))
 (let ((?x564 (store start ?x245 (+ (select start ?x245) 1))))
 (let ((?x617 (store ?x564 ?x1048 (+ (select ?x564 ?x1048) 1))))
 (let ((?x762 (store ?x617 ?x749 (+ (select ?x617 ?x749) 1))))
 (let ((?x713 (store ?x762 ?x95 (+ (select ?x762 ?x95) 1))))
 (let ((?x256 (store ?x713 ?x229 (+ (select ?x713 ?x229) 1))))
 (let ((?x733 (store ?x256 ?x831 (+ (select ?x256 ?x831) 1))))
 (let ((?x1089 (store ?x733 ?x1101 (+ (select ?x733 ?x1101) 1))))
 (let ((?x914 (store ?x1089 ?x1096 (+ (select ?x1089 ?x1096) 1))))
 (let ((?x1090 (+ w__7 ?x1097)))
 (let ((?x39 (+ w__6 ?x1099)))
 (let ((?x171 (+ w__5 ?x895)))
 (let ((?x695 (+ w__4 ?x719)))
 (let ((?x593 (+ w__3 ?x773)))
 (let ((?x62 (+ w__2 ?x1044)))
 (let ((?x1046 (+ w__1 ?x1092)))
 (let ((?x1088 (+ w__0 ?x1087)))
 (let ((?x1076 (store start ?x1088 (+ (select start ?x1088) 1))))
 (let ((?x1043 (store ?x1076 ?x1046 (+ (select ?x1076 ?x1046) 1))))
 (let ((?x772 (store ?x1043 ?x62 (+ (select ?x1043 ?x62) 1))))
 (let ((?x464 (store ?x772 ?x593 (+ (select ?x772 ?x593) 1))))
 (let ((?x619 (store ?x464 ?x695 (+ (select ?x464 ?x695) 1))))
 (let ((?x830 (store ?x619 ?x171 (+ (select ?x619 ?x171) 1))))
 (let ((?x380 (store ?x830 ?x39 (+ (select ?x830 ?x39) 1))))
 (let ((?x1095 (store ?x380 ?x1090 (+ (select ?x380 ?x1090) 1))))
 (= ?x1095 ?x914))))))))))))))))))))))))))))))))))))))))))
(assert
 (let ((?x164 (* b__6 1)))
 (let ((?x189 (+ v__7 ?x164)))
 (let ((?x521 (* b__6 8)))
 (let ((?x368 (+ v__6 ?x521)))
 (let ((?x1084 (* b__6 7)))
 (let ((?x438 (+ v__5 ?x1084)))
 (let ((?x662 (* b__6 6)))
 (let ((?x668 (+ v__4 ?x662)))
 (let ((?x396 (* b__6 5)))
 (let ((?x481 (+ v__3 ?x396)))
 (let ((?x626 (* b__6 4)))
 (let ((?x639 (+ v__2 ?x626)))
 (let ((?x364 (* b__6 3)))
 (let ((?x289 (+ v__1 ?x364)))
 (let ((?x174 (* b__6 2)))
 (let ((?x57 (+ v__0 ?x174)))
 (let ((?x89 (store start ?x57 (+ (select start ?x57) 1))))
 (let ((?x734 (store ?x89 ?x289 (+ (select ?x89 ?x289) 1))))
 (let ((?x729 (store ?x734 ?x639 (+ (select ?x734 ?x639) 1))))
 (let ((?x87 (store ?x729 ?x481 (+ (select ?x729 ?x481) 1))))
 (let ((?x1079 (store ?x87 ?x668 (+ (select ?x87 ?x668) 1))))
 (let ((?x155 (store ?x1079 ?x438 (+ (select ?x1079 ?x438) 1))))
 (let ((?x797 (store ?x155 ?x368 (+ (select ?x155 ?x368) 1))))
 (let ((?x574 (store ?x797 ?x189 (+ (select ?x797 ?x189) 1))))
 (let ((?x809 (+ w__7 ?x521)))
 (let ((?x802 (+ w__6 ?x1084)))
 (let ((?x1080 (+ w__5 ?x662)))
 (let ((?x650 (+ w__4 ?x396)))
 (let ((?x594 (+ w__3 ?x626)))
 (let ((?x69 (+ w__2 ?x364)))
 (let ((?x247 (+ w__1 ?x174)))
 (let ((?x814 (+ w__0 ?x164)))
 (let ((?x837 (store start ?x814 (+ (select start ?x814) 1))))
 (let ((?x644 (store ?x837 ?x247 (+ (select ?x837 ?x247) 1))))
 (let ((?x628 (store ?x644 ?x69 (+ (select ?x644 ?x69) 1))))
 (let ((?x397 (store ?x628 ?x594 (+ (select ?x628 ?x594) 1))))
 (let ((?x659 (store ?x397 ?x650 (+ (select ?x397 ?x650) 1))))
 (let ((?x1083 (store ?x659 ?x1080 (+ (select ?x659 ?x1080) 1))))
 (let ((?x257 (store ?x1083 ?x802 (+ (select ?x1083 ?x802) 1))))
 (let ((?x551 (store ?x257 ?x809 (+ (select ?x257 ?x809) 1))))
 (= ?x551 ?x574))))))))))))))))))))))))))))))))))))))))))
(assert
 (let ((?x562 (* b__7 1)))
 (let ((?x1182 (+ v__7 ?x562)))
 (let ((?x1173 (* b__7 8)))
 (let ((?x1174 (+ v__6 ?x1173)))
 (let ((?x1164 (* b__7 7)))
 (let ((?x1165 (+ v__5 ?x1164)))
 (let ((?x1155 (* b__7 6)))
 (let ((?x1156 (+ v__4 ?x1155)))
 (let ((?x1146 (* b__7 5)))
 (let ((?x1147 (+ v__3 ?x1146)))
 (let ((?x1137 (* b__7 4)))
 (let ((?x1138 (+ v__2 ?x1137)))
 (let ((?x1128 (* b__7 3)))
 (let ((?x1129 (+ v__1 ?x1128)))
 (let ((?x1119 (* b__7 2)))
 (let ((?x1120 (+ v__0 ?x1119)))
 (let ((?x1123 (store start ?x1120 (+ (select start ?x1120) 1))))
 (let ((?x1132 (store ?x1123 ?x1129 (+ (select ?x1123 ?x1129) 1))))
 (let ((?x1141 (store ?x1132 ?x1138 (+ (select ?x1132 ?x1138) 1))))
 (let ((?x1150 (store ?x1141 ?x1147 (+ (select ?x1141 ?x1147) 1))))
 (let ((?x1159 (store ?x1150 ?x1156 (+ (select ?x1150 ?x1156) 1))))
 (let ((?x1168 (store ?x1159 ?x1165 (+ (select ?x1159 ?x1165) 1))))
 (let ((?x1177 (store ?x1168 ?x1174 (+ (select ?x1168 ?x1174) 1))))
 (let ((?x1185 (store ?x1177 ?x1182 (+ (select ?x1177 ?x1182) 1))))
 (let ((?x1178 (+ w__7 ?x1173)))
 (let ((?x1169 (+ w__6 ?x1164)))
 (let ((?x1160 (+ w__5 ?x1155)))
 (let ((?x1151 (+ w__4 ?x1146)))
 (let ((?x1142 (+ w__3 ?x1137)))
 (let ((?x1133 (+ w__2 ?x1128)))
 (let ((?x1124 (+ w__1 ?x1119)))
 (let ((?x1115 (+ w__0 ?x562)))
 (let ((?x1118 (store start ?x1115 (+ (select start ?x1115) 1))))
 (let ((?x1127 (store ?x1118 ?x1124 (+ (select ?x1118 ?x1124) 1))))
 (let ((?x1136 (store ?x1127 ?x1133 (+ (select ?x1127 ?x1133) 1))))
 (let ((?x1145 (store ?x1136 ?x1142 (+ (select ?x1136 ?x1142) 1))))
 (let ((?x1154 (store ?x1145 ?x1151 (+ (select ?x1145 ?x1151) 1))))
 (let ((?x1163 (store ?x1154 ?x1160 (+ (select ?x1154 ?x1160) 1))))
 (let ((?x1172 (store ?x1163 ?x1169 (+ (select ?x1163 ?x1169) 1))))
 (let ((?x1181 (store ?x1172 ?x1178 (+ (select ?x1172 ?x1178) 1))))
 (= ?x1181 ?x1185))))))))))))))))))))))))))))))))))))))))))
(assert
 (let ((?x1259 (* b__8 1)))
 (let ((?x1327 (+ v__7 ?x1259)))
 (let ((?x1318 (* b__8 8)))
 (let ((?x1319 (+ v__6 ?x1318)))
 (let ((?x1309 (* b__8 7)))
 (let ((?x1310 (+ v__5 ?x1309)))
 (let ((?x1300 (* b__8 6)))
 (let ((?x1301 (+ v__4 ?x1300)))
 (let ((?x1291 (* b__8 5)))
 (let ((?x1292 (+ v__3 ?x1291)))
 (let ((?x1282 (* b__8 4)))
 (let ((?x1283 (+ v__2 ?x1282)))
 (let ((?x1273 (* b__8 3)))
 (let ((?x1274 (+ v__1 ?x1273)))
 (let ((?x1264 (* b__8 2)))
 (let ((?x1265 (+ v__0 ?x1264)))
 (let ((?x1268 (store start ?x1265 (+ (select start ?x1265) 1))))
 (let ((?x1277 (store ?x1268 ?x1274 (+ (select ?x1268 ?x1274) 1))))
 (let ((?x1286 (store ?x1277 ?x1283 (+ (select ?x1277 ?x1283) 1))))
 (let ((?x1295 (store ?x1286 ?x1292 (+ (select ?x1286 ?x1292) 1))))
 (let ((?x1304 (store ?x1295 ?x1301 (+ (select ?x1295 ?x1301) 1))))
 (let ((?x1313 (store ?x1304 ?x1310 (+ (select ?x1304 ?x1310) 1))))
 (let ((?x1322 (store ?x1313 ?x1319 (+ (select ?x1313 ?x1319) 1))))
 (let ((?x1330 (store ?x1322 ?x1327 (+ (select ?x1322 ?x1327) 1))))
 (let ((?x1323 (+ w__7 ?x1318)))
 (let ((?x1314 (+ w__6 ?x1309)))
 (let ((?x1305 (+ w__5 ?x1300)))
 (let ((?x1296 (+ w__4 ?x1291)))
 (let ((?x1287 (+ w__3 ?x1282)))
 (let ((?x1278 (+ w__2 ?x1273)))
 (let ((?x1269 (+ w__1 ?x1264)))
 (let ((?x1260 (+ w__0 ?x1259)))
 (let ((?x1263 (store start ?x1260 (+ (select start ?x1260) 1))))
 (let ((?x1272 (store ?x1263 ?x1269 (+ (select ?x1263 ?x1269) 1))))
 (let ((?x1281 (store ?x1272 ?x1278 (+ (select ?x1272 ?x1278) 1))))
 (let ((?x1290 (store ?x1281 ?x1287 (+ (select ?x1281 ?x1287) 1))))
 (let ((?x1299 (store ?x1290 ?x1296 (+ (select ?x1290 ?x1296) 1))))
 (let ((?x1308 (store ?x1299 ?x1305 (+ (select ?x1299 ?x1305) 1))))
 (let ((?x1317 (store ?x1308 ?x1314 (+ (select ?x1308 ?x1314) 1))))
 (let ((?x1326 (store ?x1317 ?x1323 (+ (select ?x1317 ?x1323) 1))))
 (= ?x1326 ?x1330))))))))))))))))))))))))))))))))))))))))))
(assert
 (let (($x1412 (and (= w__1 v__0) (= w__2 v__1) (= w__3 v__2) (= w__4 v__3) (= w__5 v__4) (= w__6 v__5) (= w__7 v__6) (= w__0 v__7))))
 (not $x1412)))
(check-sat)
