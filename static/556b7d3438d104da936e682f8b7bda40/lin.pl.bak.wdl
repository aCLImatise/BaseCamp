version 1.0

task Linplbak {
  command <<<
    lin_pl_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}