version 1.0

task Je {
  command <<<
    je
  >>>
  output {
    File out_stdout = stdout()
  }
}