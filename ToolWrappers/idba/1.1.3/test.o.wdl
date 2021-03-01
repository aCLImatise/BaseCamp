version 1.0

task Testo {
  command <<<
    test_o
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}