version 1.0

task Mglobrms {
  command <<<
    mglobrms
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}