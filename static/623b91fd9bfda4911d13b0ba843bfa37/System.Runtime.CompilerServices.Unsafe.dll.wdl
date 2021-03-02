version 1.0

task SystemRuntimeCompilerServicesUnsafedll {
  command <<<
    System_Runtime_CompilerServices_Unsafe_dll
  >>>
  runtime {
    docker: "quay.io/biocontainers/thermorawfileparser:1.3.2--0"
  }
  output {
    File out_stdout = stdout()
  }
}