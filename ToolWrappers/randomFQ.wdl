version 1.0

task RandomFQ {
  command <<<
    randomFQ
  >>>
  output {
    File out_stdout = stdout()
  }
}