version 1.0

task Dropest {
  command <<<
    dropest
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}