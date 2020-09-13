version 1.0

task Centreseq {
  command <<<
    centreseq
  >>>
  output {
    File out_stdout = stdout()
  }
}