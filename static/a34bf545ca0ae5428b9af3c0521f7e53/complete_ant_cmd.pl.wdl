version 1.0

task Completeantcmdpl {
  command <<<
    complete_ant_cmd_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}