; ModuleID = '<stdin>'
source_filename = "/Users/michaelbeebe/Documents/llvm/llvm-tutor/test/../inputs/input_for_mba.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx13.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define signext i8 @foo(i8 noundef signext %0, i8 noundef signext %1, i8 noundef signext %2, i8 noundef signext %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store i8 %0, ptr %5, align 1
  store i8 %1, ptr %6, align 1
  store i8 %2, ptr %7, align 1
  store i8 %3, ptr %8, align 1
  %11 = load i8, ptr %7, align 1
  %12 = sext i8 %11 to i32
  %13 = load i8, ptr %8, align 1
  %14 = sext i8 %13 to i32
  %15 = add nsw i32 %12, %14
  %16 = trunc i32 %15 to i8
  store i8 %16, ptr %9, align 1
  %17 = load i8, ptr %5, align 1
  %18 = sext i8 %17 to i32
  %19 = load i8, ptr %6, align 1
  %20 = sext i8 %19 to i32
  %21 = add nsw i32 %18, %20
  %22 = trunc i32 %21 to i8
  store i8 %22, ptr %10, align 1
  %23 = load i8, ptr %9, align 1
  %24 = sext i8 %23 to i32
  %25 = load i8, ptr %10, align 1
  %26 = sext i8 %25 to i32
  %27 = add nsw i32 %24, %26
  %28 = trunc i32 %27 to i8
  ret i8 %28
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = load ptr, ptr %12, align 8
  %14 = call i32 @atoi(ptr noundef %13)
  store i32 %14, ptr %6, align 4
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = call i32 @atoi(ptr noundef %17)
  store i32 %18, ptr %7, align 4
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  %22 = call i32 @atoi(ptr noundef %21)
  store i32 %22, ptr %8, align 4
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds ptr, ptr %23, i64 4
  %25 = load ptr, ptr %24, align 8
  %26 = call i32 @atoi(ptr noundef %25)
  store i32 %26, ptr %9, align 4
  %27 = load i32, ptr %6, align 4
  %28 = trunc i32 %27 to i8
  %29 = load i32, ptr %7, align 4
  %30 = trunc i32 %29 to i8
  %31 = load i32, ptr %8, align 4
  %32 = trunc i32 %31 to i8
  %33 = load i32, ptr %9, align 4
  %34 = trunc i32 %33 to i8
  %35 = call signext i8 @foo(i8 noundef signext %28, i8 noundef signext %30, i8 noundef signext %32, i8 noundef signext %34)
  store i8 %35, ptr %10, align 1
  %36 = load i8, ptr %10, align 1
  %37 = sext i8 %36 to i32
  ret i32 %37
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
