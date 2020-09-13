version 1.0

task Kssd {
  command <<<
    kssd
  >>>
  output {
    File out_stdout = stdout()
  }
}