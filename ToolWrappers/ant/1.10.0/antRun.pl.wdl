version 1.0

task AntRunpl {
  command <<<
    antRun_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}