version 1.0

task Ltqnormplbak {
  command <<<
    ltqnorm_pl_bak
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}