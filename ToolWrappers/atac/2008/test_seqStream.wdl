version 1.0

task TestseqStream {
  command <<<
    test_seqStream
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}