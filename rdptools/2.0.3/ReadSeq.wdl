version 1.0

task ReadSeq {
  command <<<
    ReadSeq
  >>>
  output {
    File out_stdout = stdout()
  }
}