version 1.0

task CountSeq {
  command <<<
    count_seq
  >>>
  output {
    File out_stdout = stdout()
  }
}