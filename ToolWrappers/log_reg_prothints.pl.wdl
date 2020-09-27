version 1.0

task LogRegProthintspl {
  command <<<
    log_reg_prothints_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}