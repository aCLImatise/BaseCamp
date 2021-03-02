version 1.0

task Scrappie {
  command <<<
    scrappie
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}