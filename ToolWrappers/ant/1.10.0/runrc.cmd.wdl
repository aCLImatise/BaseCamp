version 1.0

task Runrccmd {
  command <<<
    runrc_cmd
  >>>
  output {
    File out_stdout = stdout()
  }
}