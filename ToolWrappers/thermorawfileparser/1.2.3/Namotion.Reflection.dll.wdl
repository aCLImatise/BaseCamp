version 1.0

task NamotionReflectiondll {
  command <<<
    Namotion_Reflection_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}