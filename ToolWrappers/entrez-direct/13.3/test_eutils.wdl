version 1.0

task Testeutils {
  command <<<
    test_eutils
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}