; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: opt < %s -instcombine -S | FileCheck %s

; PR1244

define i1 @test(i32 %c.3.i, i32 %d.292.2.i) {
; CHECK-LABEL: @test(
; CHECK-NEXT:    [[TMP1:%.*]] = icmp sle i32 [[C_3_I:%.*]], [[D_292_2_I:%.*]]
; CHECK-NEXT:    ret i1 [[TMP1]]
;
  %tmp266.i = icmp slt i32 %c.3.i, %d.292.2.i
  %tmp276.i = icmp eq i32 %c.3.i, %d.292.2.i
  %sel_tmp80 = or i1 %tmp266.i, %tmp276.i
  ret i1 %sel_tmp80
}
