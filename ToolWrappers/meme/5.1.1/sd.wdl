version 1.0

task Sd {
  command <<<
    sd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}