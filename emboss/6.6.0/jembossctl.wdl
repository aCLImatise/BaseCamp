version 1.0

task Jembossctl {
  command <<<
    jembossctl
  >>>
  output {
    File out_stdout = stdout()
  }
}