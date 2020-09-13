version 1.0

task BpDasServerpl {
  command <<<
    bp_das_server_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}