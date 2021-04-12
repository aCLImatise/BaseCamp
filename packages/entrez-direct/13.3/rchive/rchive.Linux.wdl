version 1.0

task RchiveLinux {
  command <<<
    rchive_Linux
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}