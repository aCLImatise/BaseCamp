version 1.0

task Coilssvrpl {
  command <<<
    coils_svr_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}