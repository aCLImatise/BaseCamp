version 1.0

task Qarrayrun {
  command <<<
    qarrayrun
  >>>
  output {
    File out_stdout = stdout()
  }
}