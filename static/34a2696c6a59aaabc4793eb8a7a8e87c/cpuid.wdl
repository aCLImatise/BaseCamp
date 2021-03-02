version 1.0

task Cpuid {
  command <<<
    cpuid
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}