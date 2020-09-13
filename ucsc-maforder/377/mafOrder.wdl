version 1.0

task MafOrder {
  command <<<
    mafOrder
  >>>
  output {
    File out_stdout = stdout()
  }
}