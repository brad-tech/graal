; ModuleID = 'primitives.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* bitcast (i32 ()* @test to void ()*), i8* null }]

; Function Attrs: nounwind uwtable
define i32 @test() #0 {
  %a = alloca i8, align 1
  %b = alloca i16, align 2
  %c = alloca i32, align 4
  %d = alloca i64, align 8
  %g = alloca i128, align 16
  %e = alloca float, align 4
  %f = alloca double, align 8
  %h = alloca x86_fp80, align 16
  %result = alloca x86_fp80, align 16
  store i8 48, i8* %a, align 1
  store i16 1, i16* %b, align 2
  store i32 2, i32* %c, align 4
  store i64 3, i64* %d, align 8
  store i128 8, i128* %g, align 16
  store float 4.500000e+00, float* %e, align 4
  store double 6.700000e+00, double* %f, align 8
  store x86_fp80 0xK40029199999999999800, x86_fp80* %h, align 16
  %1 = load i8, i8* %a, align 1
  %2 = sext i8 %1 to i32
  %3 = load i16, i16* %b, align 2
  %4 = sext i16 %3 to i32
  %5 = add nsw i32 %2, %4
  %6 = load i32, i32* %c, align 4
  %7 = add nsw i32 %5, %6
  %8 = sext i32 %7 to i64
  %9 = load i64, i64* %d, align 8
  %10 = add nsw i64 %8, %9
  %11 = sitofp i64 %10 to float
  %12 = load float, float* %e, align 4
  %13 = fadd float %11, %12
  %14 = fpext float %13 to double
  %15 = load double, double* %f, align 8
  %16 = fadd double %14, %15
  %17 = load i128, i128* %g, align 16
  %18 = trunc i128 %17 to i64
  %19 = sitofp i64 %18 to double
  %20 = fadd double %16, %19
  %21 = fpext double %20 to x86_fp80
  %22 = load x86_fp80, x86_fp80* %h, align 16
  %23 = fadd x86_fp80 %21, %22
  store x86_fp80 %23, x86_fp80* %result, align 16
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (tags/RELEASE_381/final)"}
