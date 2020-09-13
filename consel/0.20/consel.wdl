version 1.0

task Consel {
  command <<<
    consel
  >>>
  output {
    File out_stdout = stdout()
  }
}