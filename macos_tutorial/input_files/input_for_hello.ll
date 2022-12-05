; ModuleID = '/Users/michaelbeebe/Documents/llvm/llvm-tutor/inputs/input_for_hello.c'
source_filename = "/Users/michaelbeebe/Documents/llvm/llvm-tutor/inputs/input_for_hello.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx13.0.0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @foo(i32 noundef %0) local_unnamed_addr #0 {
  %2 = shl nsw i32 %0, 1
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @bar(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = shl i32 %1, 2
  %4 = add nsw i32 %3, %0
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @fez(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = shl i32 %1, 2
  %5 = add nsw i32 %4, %0
  %6 = shl nsw i32 %5, 1
  %7 = mul nsw i32 %2, 3
  %8 = add i32 %7, %0
  %9 = add i32 %8, %6
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable
define i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  ret i32 12915
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind readnone ssp willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"clang version 15.0.6 (https://github.com/llvm/llvm-project.git e6e61e9b2ef7c0fa3fe2cd7c612e00ecf57a9dd8)"}
