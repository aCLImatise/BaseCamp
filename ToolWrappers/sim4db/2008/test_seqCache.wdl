version 1.0

task TestseqCache {
  command <<<
    test_seqCache
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}