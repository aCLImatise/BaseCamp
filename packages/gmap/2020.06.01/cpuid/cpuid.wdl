version 1.0

task Cpuid {
  command <<<
    cpuid
  >>>
  output {
    File out_stdout = stdout()
  }
}