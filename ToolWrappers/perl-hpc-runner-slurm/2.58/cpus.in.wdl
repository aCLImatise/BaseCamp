version 1.0

task Cpusin {
  command <<<
    cpus_in
  >>>
  output {
    File out_stdout = stdout()
  }
}