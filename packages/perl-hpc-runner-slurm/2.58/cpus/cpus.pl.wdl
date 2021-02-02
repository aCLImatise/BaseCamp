version 1.0

task Cpuspl {
  command <<<
    cpus_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}