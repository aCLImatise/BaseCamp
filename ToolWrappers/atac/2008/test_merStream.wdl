version 1.0

task TestmerStream {
  command <<<
    test_merStream
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}