version 1.0

task Cutplbak {
  command <<<
    cut_pl_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}