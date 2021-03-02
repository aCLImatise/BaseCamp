version 1.0

task Bodyplbak {
  command <<<
    body_pl_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}