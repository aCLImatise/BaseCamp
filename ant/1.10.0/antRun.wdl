version 1.0

task AntRun {
  command <<<
    antRun
  >>>
  output {
    File out_stdout = stdout()
  }
}