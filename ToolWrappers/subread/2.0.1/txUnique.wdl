version 1.0

task TxUnique {
  command <<<
    txUnique
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}