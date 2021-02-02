version 1.0

task Whoami {
  command <<<
    whoami
  >>>
  output {
    File out_stdout = stdout()
  }
}