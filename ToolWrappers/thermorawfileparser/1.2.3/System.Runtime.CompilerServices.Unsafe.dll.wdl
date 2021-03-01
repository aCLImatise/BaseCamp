version 1.0

task SystemRuntimeCompilerServicesUnsafedll {
  command <<<
    System_Runtime_CompilerServices_Unsafe_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}