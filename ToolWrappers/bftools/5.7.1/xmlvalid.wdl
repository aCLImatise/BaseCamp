version 1.0

task Xmlvalid {
  command <<<
    xmlvalid
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}