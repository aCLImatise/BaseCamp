version 1.0

task TxUnique {
  command <<<
    txUnique
  >>>
  output {
    File out_stdout = stdout()
  }
}