version 1.0

task Bankunlock {
  command <<<
    bank_unlock
  >>>
  output {
    File out_stdout = stdout()
  }
}