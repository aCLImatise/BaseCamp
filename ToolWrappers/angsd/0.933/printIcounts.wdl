version 1.0

task PrintIcounts {
  command <<<
    printIcounts
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}