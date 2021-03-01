version 1.0

task Ipcress {
  command <<<
    ipcress
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}