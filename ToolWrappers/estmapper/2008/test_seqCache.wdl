version 1.0

task TestseqCache {
  command <<<
    test_seqCache
  >>>
  output {
    File out_stdout = stdout()
  }
}