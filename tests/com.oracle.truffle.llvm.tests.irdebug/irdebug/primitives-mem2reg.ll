; ModuleID = 'primitives.ll'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* bitcast (i32 ()* @test to void ()*), i8* null }]

; Function Attrs: nounwind uwtable
define i32 @test() #0 {
  %1 = sext i8 48 to i32
  %2 = sext i16 1 to i32
  %3 = add nsw i32 %1, %2
  %4 = add nsw i32 %3, 2
  %5 = sext i32 %4 to i64
  %6 = add nsw i64 %5, 3
  %7 = sitofp i64 %6 to float
  %8 = fadd float %7, 4.500000e+00
  %9 = fpext float %8 to double
  %10 = fadd double %9, 6.700000e+00
  %11 = trunc i128 8 to i64
  %12 = sitofp i64 %11 to double
  %13 = fadd double %10, %12
  %14 = fpext double %13 to x86_fp80
  %15 = fadd x86_fp80 %14, 0xK40029199999999999800
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.8.1 (tags/RELEASE_381/final)"}
