version 1.0

task TestseqStream {
  command <<<
    test_seqStream
  >>>
  output {
    File out_stdout = stdout()
  }
}