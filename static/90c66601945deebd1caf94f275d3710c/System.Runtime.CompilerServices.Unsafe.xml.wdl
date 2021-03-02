version 1.0

task SystemRuntimeCompilerServicesUnsafexml {
  command <<<
    System_Runtime_CompilerServices_Unsafe_xml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}