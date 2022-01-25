
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
 (and (distinct b__0 b__1 b__2 b__3 b__4 b__5 b__6 b__7) true))
(assert
 (>= w__0 0))
(assert
 (>= v__0 0))
(assert
 (<= w__0 7))
(assert
 (<= v__0 7))
(assert
 (>= w__1 0))
(assert
 (>= v__1 0))
(assert
 (<= w__1 7))
(assert
 (<= v__1 7))
(assert
 (>= w__2 0))
(assert
 (>= v__2 0))
(assert
 (<= w__2 7))
(assert
 (<= v__2 7))
(assert
 (>= w__3 0))
(assert
 (>= v__3 0))
(assert
 (<= w__3 7))
(assert
 (<= v__3 7))
(assert
 (>= w__4 0))
(assert
 (>= v__4 0))
(assert
 (<= w__4 7))
(assert
 (<= v__4 7))
(assert
 (>= w__5 0))
(assert
 (>= v__5 0))
(assert
 (<= w__5 7))
(assert
 (<= v__5 7))
(assert
 (>= w__6 0))
(assert
 (>= v__6 0))
(assert
 (<= w__6 7))
(assert
 (<= v__6 7))
(assert
 (let ((?x690 (* b__0 1)))
 (let ((?x357 (+ v__6 ?x690)))
 (let ((?x796 (* b__0 7)))
 (let ((?x797 (+ v__5 ?x796)))
 (let ((?x13 (* b__0 6)))
 (let ((?x327 (+ v__4 ?x13)))
 (let ((?x25 (* b__0 5)))
 (let ((?x459 (+ v__3 ?x25)))
 (let ((?x807 (* b__0 4)))
 (let ((?x713 (+ v__2 ?x807)))
 (let ((?x274 (* b__0 3)))
 (let ((?x71 (+ v__1 ?x274)))
 (let ((?x716 (* b__0 2)))
 (let ((?x712 (+ v__0 ?x716)))
 (let ((?x719 (store start ?x712 (+ (select start ?x712) 1))))
 (let ((?x369 (store ?x719 ?x71 (+ (select ?x719 ?x71) 1))))
 (let ((?x718 (store ?x369 ?x713 (+ (select ?x369 ?x713) 1))))
 (let ((?x811 (store ?x718 ?x459 (+ (select ?x718 ?x459) 1))))
 (let ((?x405 (store ?x811 ?x327 (+ (select ?x811 ?x327) 1))))
 (let ((?x710 (store ?x405 ?x797 (+ (select ?x405 ?x797) 1))))
 (let ((?x465 (store ?x710 ?x357 (+ (select ?x710 ?x357) 1))))
 (let ((?x711 (+ w__6 ?x796)))
 (let ((?x404 (+ w__5 ?x13)))
 (let ((?x812 (+ w__4 ?x25)))
 (let ((?x577 (+ w__3 ?x807)))
 (let ((?x798 (+ w__2 ?x274)))
 (let ((?x92 (+ w__1 ?x716)))
 (let ((?x714 (+ w__0 ?x690)))
 (let ((?x715 (store start ?x714 (+ (select start ?x714) 1))))
 (let ((?x80 (store ?x715 ?x92 (+ (select ?x715 ?x92) 1))))
 (let ((?x806 (store ?x80 ?x798 (+ (select ?x80 ?x798) 1))))
 (let ((?x204 (store ?x806 ?x577 (+ (select ?x806 ?x577) 1))))
 (let ((?x721 (store ?x204 ?x812 (+ (select ?x204 ?x812) 1))))
 (let ((?x795 (store ?x721 ?x404 (+ (select ?x721 ?x404) 1))))
 (let ((?x36 (store ?x795 ?x711 (+ (select ?x795 ?x711) 1))))
 (= ?x36 ?x465)))))))))))))))))))))))))))))))))))))
(assert
 (let ((?x593 (* b__1 1)))
 (let ((?x391 (+ v__6 ?x593)))
 (let ((?x209 (* b__1 7)))
 (let ((?x211 (+ v__5 ?x209)))
 (let ((?x324 (* b__1 6)))
 (let ((?x349 (+ v__4 ?x324)))
 (let ((?x225 (* b__1 5)))
 (let ((?x235 (+ v__3 ?x225)))
 (let ((?x343 (* b__1 4)))
 (let ((?x820 (+ v__2 ?x343)))
 (let ((?x220 (* b__1 3)))
 (let ((?x330 (+ v__1 ?x220)))
 (let ((?x266 (* b__1 2)))
 (let ((?x495 (+ v__0 ?x266)))
 (let ((?x469 (store start ?x495 (+ (select start ?x495) 1))))
 (let ((?x724 (store ?x469 ?x330 (+ (select ?x469 ?x330) 1))))
 (let ((?x176 (store ?x724 ?x820 (+ (select ?x724 ?x820) 1))))
 (let ((?x296 (store ?x176 ?x235 (+ (select ?x176 ?x235) 1))))
 (let ((?x22 (store ?x296 ?x349 (+ (select ?x296 ?x349) 1))))
 (let ((?x539 (store ?x22 ?x211 (+ (select ?x22 ?x211) 1))))
 (let ((?x192 (store ?x539 ?x391 (+ (select ?x539 ?x391) 1))))
 (let ((?x549 (+ w__6 ?x209)))
 (let ((?x50 (+ w__5 ?x324)))
 (let ((?x350 (+ w__4 ?x225)))
 (let ((?x556 (+ w__3 ?x343)))
 (let ((?x44 (+ w__2 ?x220)))
 (let ((?x463 (+ w__1 ?x266)))
 (let ((?x59 (+ w__0 ?x593)))
 (let ((?x265 (store start ?x59 (+ (select start ?x59) 1))))
 (let ((?x702 (store ?x265 ?x463 (+ (select ?x265 ?x463) 1))))
 (let ((?x704 (store ?x702 ?x44 (+ (select ?x702 ?x44) 1))))
 (let ((?x260 (store ?x704 ?x556 (+ (select ?x704 ?x556) 1))))
 (let ((?x381 (store ?x260 ?x350 (+ (select ?x260 ?x350) 1))))
 (let ((?x407 (store ?x381 ?x50 (+ (select ?x381 ?x50) 1))))
 (let ((?x181 (store ?x407 ?x549 (+ (select ?x407 ?x549) 1))))
 (= ?x181 ?x192)))))))))))))))))))))))))))))))))))))
(assert
 (let ((?x311 (* b__2 1)))
 (let ((?x749 (+ v__6 ?x311)))
 (let ((?x755 (* b__2 7)))
 (let ((?x756 (+ v__5 ?x755)))
 (let ((?x771 (* b__2 6)))
 (let ((?x786 (+ v__4 ?x771)))
 (let ((?x750 (* b__2 5)))
 (let ((?x751 (+ v__3 ?x750)))
 (let ((?x488 (* b__2 4)))
 (let ((?x489 (+ v__2 ?x488)))
 (let ((?x351 (* b__2 3)))
 (let ((?x352 (+ v__1 ?x351)))
 (let ((?x347 (* b__2 2)))
 (let ((?x359 (+ v__0 ?x347)))
 (let ((?x484 (store start ?x359 (+ (select start ?x359) 1))))
 (let ((?x398 (store ?x484 ?x352 (+ (select ?x484 ?x352) 1))))
 (let ((?x741 (store ?x398 ?x489 (+ (select ?x398 ?x489) 1))))
 (let ((?x758 (store ?x741 ?x751 (+ (select ?x741 ?x751) 1))))
 (let ((?x736 (store ?x758 ?x786 (+ (select ?x758 ?x786) 1))))
 (let ((?x773 (store ?x736 ?x756 (+ (select ?x736 ?x756) 1))))
 (let ((?x761 (store ?x773 ?x749 (+ (select ?x773 ?x749) 1))))
 (let ((?x774 (+ w__6 ?x755)))
 (let ((?x737 (+ w__5 ?x771)))
 (let ((?x767 (+ w__4 ?x750)))
 (let ((?x776 (+ w__3 ?x488)))
 (let ((?x339 (+ w__2 ?x351)))
 (let ((?x485 (+ w__1 ?x347)))
 (let ((?x237 (+ w__0 ?x311)))
 (let ((?x84 (store start ?x237 (+ (select start ?x237) 1))))
 (let ((?x198 (store ?x84 ?x485 (+ (select ?x84 ?x485) 1))))
 (let ((?x487 (store ?x198 ?x339 (+ (select ?x198 ?x339) 1))))
 (let ((?x743 (store ?x487 ?x776 (+ (select ?x487 ?x776) 1))))
 (let ((?x770 (store ?x743 ?x767 (+ (select ?x743 ?x767) 1))))
 (let ((?x754 (store ?x770 ?x737 (+ (select ?x770 ?x737) 1))))
 (let ((?x785 (store ?x754 ?x774 (+ (select ?x754 ?x774) 1))))
 (= ?x785 ?x761)))))))))))))))))))))))))))))))))))))
(assert
 (let ((?x251 (* b__3 1)))
 (let ((?x323 (+ v__6 ?x251)))
 (let ((?x837 (* b__3 7)))
 (let ((?x838 (+ v__5 ?x837)))
 (let ((?x123 (* b__3 6)))
 (let ((?x140 (+ v__4 ?x123)))
 (let ((?x832 (* b__3 5)))
 (let ((?x833 (+ v__3 ?x832)))
 (let ((?x171 (* b__3 4)))
 (let ((?x527 (+ v__2 ?x171)))
 (let ((?x564 (* b__3 3)))
 (let ((?x417 (+ v__1 ?x564)))
 (let ((?x819 (* b__3 2)))
 (let ((?x38 (+ v__0 ?x819)))
 (let ((?x613 (store start ?x38 (+ (select start ?x38) 1))))
 (let ((?x255 (store ?x613 ?x417 (+ (select ?x613 ?x417) 1))))
 (let ((?x177 (store ?x255 ?x527 (+ (select ?x255 ?x527) 1))))
 (let ((?x731 (store ?x177 ?x833 (+ (select ?x177 ?x833) 1))))
 (let ((?x231 (store ?x731 ?x140 (+ (select ?x731 ?x140) 1))))
 (let ((?x101 (store ?x231 ?x838 (+ (select ?x231 ?x838) 1))))
 (let ((?x373 (store ?x101 ?x323 (+ (select ?x101 ?x323) 1))))
 (let ((?x174 (+ w__6 ?x837)))
 (let ((?x421 (+ w__5 ?x123)))
 (let ((?x732 (+ w__4 ?x832)))
 (let ((?x416 (+ w__3 ?x171)))
 (let ((?x229 (+ w__2 ?x564)))
 (let ((?x23 (+ w__1 ?x819)))
 (let ((?x554 (+ w__0 ?x251)))
 (let ((?x827 (store start ?x554 (+ (select start ?x554) 1))))
 (let ((?x532 (store ?x827 ?x23 (+ (select ?x827 ?x23) 1))))
 (let ((?x256 (store ?x532 ?x229 (+ (select ?x532 ?x229) 1))))
 (let ((?x831 (store ?x256 ?x416 (+ (select ?x256 ?x416) 1))))
 (let ((?x418 (store ?x831 ?x732 (+ (select ?x831 ?x732) 1))))
 (let ((?x836 (store ?x418 ?x421 (+ (select ?x418 ?x421) 1))))
 (let ((?x228 (store ?x836 ?x174 (+ (select ?x836 ?x174) 1))))
 (= ?x228 ?x373)))))))))))))))))))))))))))))))))))))
(assert
 (let ((?x526 (* b__4 1)))
 (let ((?x188 (+ v__6 ?x526)))
 (let ((?x473 (* b__4 7)))
 (let ((?x468 (+ v__5 ?x473)))
 (let ((?x190 (* b__4 6)))
 (let ((?x437 (+ v__4 ?x190)))
 (let ((?x550 (* b__4 5)))
 (let ((?x587 (+ v__3 ?x550)))
 (let ((?x116 (* b__4 4)))
 (let ((?x161 (+ v__2 ?x116)))
 (let ((?x475 (* b__4 3)))
 (let ((?x67 (+ v__1 ?x475)))
 (let ((?x507 (* b__4 2)))
 (let ((?x281 (+ v__0 ?x507)))
 (let ((?x529 (store start ?x281 (+ (select start ?x281) 1))))
 (let ((?x420 (store ?x529 ?x67 (+ (select ?x529 ?x67) 1))))
 (let ((?x173 (store ?x420 ?x161 (+ (select ?x420 ?x161) 1))))
 (let ((?x76 (store ?x173 ?x587 (+ (select ?x173 ?x587) 1))))
 (let ((?x449 (store ?x76 ?x437 (+ (select ?x76 ?x437) 1))))
 (let ((?x457 (store ?x449 ?x468 (+ (select ?x449 ?x468) 1))))
 (let ((?x159 (store ?x457 ?x188 (+ (select ?x457 ?x188) 1))))
 (let ((?x456 (+ w__6 ?x473)))
 (let ((?x590 (+ w__5 ?x190)))
 (let ((?x222 (+ w__4 ?x550)))
 (let ((?x603 (+ w__3 ?x116)))
 (let ((?x206 (+ w__2 ?x475)))
 (let ((?x709 (+ w__1 ?x507)))
 (let ((?x221 (+ w__0 ?x526)))
 (let ((?x506 (store start ?x221 (+ (select start ?x221) 1))))
 (let ((?x445 (store ?x506 ?x709 (+ (select ?x506 ?x709) 1))))
 (let ((?x118 (store ?x445 ?x206 (+ (select ?x445 ?x206) 1))))
 (let ((?x582 (store ?x118 ?x603 (+ (select ?x118 ?x603) 1))))
 (let ((?x439 (store ?x582 ?x222 (+ (select ?x582 ?x222) 1))))
 (let ((?x474 (store ?x439 ?x590 (+ (select ?x439 ?x590) 1))))
 (let ((?x94 (store ?x474 ?x456 (+ (select ?x474 ?x456) 1))))
 (= ?x94 ?x159)))))))))))))))))))))))))))))))))))))
(assert
 (let ((?x701 (* b__5 1)))
 (let ((?x83 (+ v__6 ?x701)))
 (let ((?x815 (* b__5 7)))
 (let ((?x540 (+ v__5 ?x815)))
 (let ((?x216 (* b__5 6)))
 (let ((?x217 (+ v__4 ?x216)))
 (let ((?x335 (* b__5 5)))
 (let ((?x415 (+ v__3 ?x335)))
 (let ((?x134 (* b__5 4)))
 (let ((?x148 (+ v__2 ?x134)))
 (let ((?x792 (* b__5 3)))
 (let ((?x793 (+ v__1 ?x792)))
 (let ((?x286 (* b__5 2)))
 (let ((?x132 (+ v__0 ?x286)))
 (let ((?x223 (store start ?x132 (+ (select start ?x132) 1))))
 (let ((?x14 (store ?x223 ?x793 (+ (select ?x223 ?x793) 1))))
 (let ((?x154 (store ?x14 ?x148 (+ (select ?x14 ?x148) 1))))
 (let ((?x530 (store ?x154 ?x415 (+ (select ?x154 ?x415) 1))))
 (let ((?x612 (store ?x530 ?x217 (+ (select ?x530 ?x217) 1))))
 (let ((?x817 (store ?x612 ?x540 (+ (select ?x612 ?x540) 1))))
 (let ((?x592 (store ?x817 ?x83 (+ (select ?x817 ?x83) 1))))
 (let ((?x818 (+ w__6 ?x815)))
 (let ((?x392 (+ w__5 ?x216)))
 (let ((?x531 (+ w__4 ?x335)))
 (let ((?x334 (+ w__3 ?x134)))
 (let ((?x30 (+ w__2 ?x792)))
 (let ((?x482 (+ w__1 ?x286)))
 (let ((?x579 (+ w__0 ?x701)))
 (let ((?x575 (store start ?x579 (+ (select start ?x579) 1))))
 (let ((?x791 (store ?x575 ?x482 (+ (select ?x575 ?x482) 1))))
 (let ((?x277 (store ?x791 ?x30 (+ (select ?x791 ?x30) 1))))
 (let ((?x193 (store ?x277 ?x334 (+ (select ?x277 ?x334) 1))))
 (let ((?x387 (store ?x193 ?x531 (+ (select ?x193 ?x531) 1))))
 (let ((?x432 (store ?x387 ?x392 (+ (select ?x387 ?x392) 1))))
 (let ((?x104 (store ?x432 ?x818 (+ (select ?x432 ?x818) 1))))
 (= ?x104 ?x592)))))))))))))))))))))))))))))))))))))
(assert
 (let ((?x852 (* b__6 1)))
 (let ((?x911 (+ v__6 ?x852)))
 (let ((?x902 (* b__6 7)))
 (let ((?x903 (+ v__5 ?x902)))
 (let ((?x893 (* b__6 6)))
 (let ((?x894 (+ v__4 ?x893)))
 (let ((?x884 (* b__6 5)))
 (let ((?x885 (+ v__3 ?x884)))
 (let ((?x875 (* b__6 4)))
 (let ((?x876 (+ v__2 ?x875)))
 (let ((?x866 (* b__6 3)))
 (let ((?x867 (+ v__1 ?x866)))
 (let ((?x857 (* b__6 2)))
 (let ((?x858 (+ v__0 ?x857)))
 (let ((?x861 (store start ?x858 (+ (select start ?x858) 1))))
 (let ((?x870 (store ?x861 ?x867 (+ (select ?x861 ?x867) 1))))
 (let ((?x879 (store ?x870 ?x876 (+ (select ?x870 ?x876) 1))))
 (let ((?x888 (store ?x879 ?x885 (+ (select ?x879 ?x885) 1))))
 (let ((?x897 (store ?x888 ?x894 (+ (select ?x888 ?x894) 1))))
 (let ((?x906 (store ?x897 ?x903 (+ (select ?x897 ?x903) 1))))
 (let ((?x914 (store ?x906 ?x911 (+ (select ?x906 ?x911) 1))))
 (let ((?x907 (+ w__6 ?x902)))
 (let ((?x898 (+ w__5 ?x893)))
 (let ((?x889 (+ w__4 ?x884)))
 (let ((?x880 (+ w__3 ?x875)))
 (let ((?x871 (+ w__2 ?x866)))
 (let ((?x862 (+ w__1 ?x857)))
 (let ((?x853 (+ w__0 ?x852)))
 (let ((?x856 (store start ?x853 (+ (select start ?x853) 1))))
 (let ((?x865 (store ?x856 ?x862 (+ (select ?x856 ?x862) 1))))
 (let ((?x874 (store ?x865 ?x871 (+ (select ?x865 ?x871) 1))))
 (let ((?x883 (store ?x874 ?x880 (+ (select ?x874 ?x880) 1))))
 (let ((?x892 (store ?x883 ?x889 (+ (select ?x883 ?x889) 1))))
 (let ((?x901 (store ?x892 ?x898 (+ (select ?x892 ?x898) 1))))
 (let ((?x910 (store ?x901 ?x907 (+ (select ?x901 ?x907) 1))))
 (= ?x910 ?x914)))))))))))))))))))))))))))))))))))))
(assert
 (let ((?x979 (* b__7 1)))
 (let ((?x1038 (+ v__6 ?x979)))
 (let ((?x1029 (* b__7 7)))
 (let ((?x1030 (+ v__5 ?x1029)))
 (let ((?x1020 (* b__7 6)))
 (let ((?x1021 (+ v__4 ?x1020)))
 (let ((?x1011 (* b__7 5)))
 (let ((?x1012 (+ v__3 ?x1011)))
 (let ((?x1002 (* b__7 4)))
 (let ((?x1003 (+ v__2 ?x1002)))
 (let ((?x993 (* b__7 3)))
 (let ((?x994 (+ v__1 ?x993)))
 (let ((?x984 (* b__7 2)))
 (let ((?x985 (+ v__0 ?x984)))
 (let ((?x988 (store start ?x985 (+ (select start ?x985) 1))))
 (let ((?x997 (store ?x988 ?x994 (+ (select ?x988 ?x994) 1))))
 (let ((?x1006 (store ?x997 ?x1003 (+ (select ?x997 ?x1003) 1))))
 (let ((?x1015 (store ?x1006 ?x1012 (+ (select ?x1006 ?x1012) 1))))
 (let ((?x1024 (store ?x1015 ?x1021 (+ (select ?x1015 ?x1021) 1))))
 (let ((?x1033 (store ?x1024 ?x1030 (+ (select ?x1024 ?x1030) 1))))
 (let ((?x1041 (store ?x1033 ?x1038 (+ (select ?x1033 ?x1038) 1))))
 (let ((?x1034 (+ w__6 ?x1029)))
 (let ((?x1025 (+ w__5 ?x1020)))
 (let ((?x1016 (+ w__4 ?x1011)))
 (let ((?x1007 (+ w__3 ?x1002)))
 (let ((?x998 (+ w__2 ?x993)))
 (let ((?x989 (+ w__1 ?x984)))
 (let ((?x980 (+ w__0 ?x979)))
 (let ((?x983 (store start ?x980 (+ (select start ?x980) 1))))
 (let ((?x992 (store ?x983 ?x989 (+ (select ?x983 ?x989) 1))))
 (let ((?x1001 (store ?x992 ?x998 (+ (select ?x992 ?x998) 1))))
 (let ((?x1010 (store ?x1001 ?x1007 (+ (select ?x1001 ?x1007) 1))))
 (let ((?x1019 (store ?x1010 ?x1016 (+ (select ?x1010 ?x1016) 1))))
 (let ((?x1028 (store ?x1019 ?x1025 (+ (select ?x1019 ?x1025) 1))))
 (let ((?x1037 (store ?x1028 ?x1034 (+ (select ?x1028 ?x1034) 1))))
 (= ?x1037 ?x1041)))))))))))))))))))))))))))))))))))))
(assert
 (let (($x1113 (and (= w__1 v__0) (= w__2 v__1) (= w__3 v__2) (= w__4 v__3) (= w__5 v__4) (= w__6 v__5) (= w__0 v__6))))
 (not $x1113)))
(check-sat)
