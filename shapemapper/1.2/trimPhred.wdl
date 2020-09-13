version 1.0

task TrimPhred {
  command <<<
    trimPhred
  >>>
  output {
    File out_stdout = stdout()
  }
}