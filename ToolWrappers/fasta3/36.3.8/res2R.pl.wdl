version 1.0

task Res2Rpl {
  command <<<
    res2R_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}