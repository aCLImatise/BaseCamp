version 1.0

task Seqmt {
  command <<<
    seqmt
  >>>
  output {
    File out_stdout = stdout()
  }
}