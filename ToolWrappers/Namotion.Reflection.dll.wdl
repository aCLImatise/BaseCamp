version 1.0

task NamotionReflectiondll {
  command <<<
    Namotion_Reflection_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}