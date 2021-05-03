version 1.0

task SystemRuntimeCompilerServicesUnsafexml {
  command <<<
    System_Runtime_CompilerServices_Unsafe_xml
  >>>
  runtime {
    docker: "quay.io/biocontainers/thermorawfileparser:1.3.4--ha8f3691_0"
  }
  output {
    File out_stdout = stdout()
  }
}