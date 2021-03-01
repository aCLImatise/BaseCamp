version 1.0

task Rbrms {
  command <<<
    rbrms
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}