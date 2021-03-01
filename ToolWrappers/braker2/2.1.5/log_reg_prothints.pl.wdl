version 1.0

task LogRegProthintspl {
  command <<<
    log_reg_prothints_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}