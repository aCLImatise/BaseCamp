version 1.0

task TestmerStream {
  command <<<
    test_merStream
  >>>
  output {
    File out_stdout = stdout()
  }
}