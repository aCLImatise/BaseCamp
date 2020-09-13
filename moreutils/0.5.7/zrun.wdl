version 1.0

task Zrun {
  command <<<
    zrun
  >>>
  output {
    File out_stdout = stdout()
  }
}