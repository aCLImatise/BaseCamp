version 1.0

task Jembossctl {
  command <<<
    _jembossctl
  >>>
  output {
    File out_stdout = stdout()
  }
}