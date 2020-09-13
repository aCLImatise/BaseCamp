version 1.0

task AntRunbat {
  command <<<
    antRun_bat
  >>>
  output {
    File out_stdout = stdout()
  }
}