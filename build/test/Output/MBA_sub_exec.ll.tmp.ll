; ModuleID = '<stdin>'
source_filename = "/Users/michaelbeebe/Documents/llvm/llvm-tutor/test/../inputs/input_for_mba_sub.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx13.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr inbounds ptr, ptr %12, i64 1
  %14 = load ptr, ptr %13, align 8
  %15 = call i32 @atoi(ptr noundef %14)
  store i32 %15, ptr %6, align 4
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = call i32 @atoi(ptr noundef %18)
  store i32 %19, ptr %7, align 4
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  %23 = call i32 @atoi(ptr noundef %22)
  store i32 %23, ptr %8, align 4
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds ptr, ptr %24, i64 4
  %26 = load ptr, ptr %25, align 8
  %27 = call i32 @atoi(ptr noundef %26)
  store i32 %27, ptr %9, align 4
  %28 = load i32, ptr %6, align 4
  %29 = load i32, ptr %7, align 4
  %30 = xor i32 %29, -1
  %31 = add i32 %28, %30
  %32 = add i32 %31, 1
  store i32 %32, ptr %10, align 4
  %33 = load i32, ptr %8, align 4
  %34 = load i32, ptr %9, align 4
  %35 = xor i32 %34, -1
  %36 = add i32 %33, %35
  %37 = add i32 %36, 1
  store i32 %37, ptr %11, align 4
  %38 = load i32, ptr %10, align 4
  %39 = load i32, ptr %11, align 4
  %40 = xor i32 %39, -1
  %41 = add i32 %38, %40
  %42 = add i32 %41, 1
  ret i32 %42
}

declare i32 @atoi(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 13, i32 0]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"clang version 15.0.6 (https://github.com/llvm/llvm-project.git e6e61e9b2ef7c0fa3fe2cd7c612e00ecf57a9dd8)"}
