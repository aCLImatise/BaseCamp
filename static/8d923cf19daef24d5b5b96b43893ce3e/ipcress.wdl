version 1.0

task Ipcress {
  command <<<
    ipcress
  >>>
  output {
    File out_stdout = stdout()
  }
}