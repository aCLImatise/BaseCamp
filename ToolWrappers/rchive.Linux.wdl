version 1.0

task RchiveLinux {
  command <<<
    rchive_Linux
  >>>
  output {
    File out_stdout = stdout()
  }
}