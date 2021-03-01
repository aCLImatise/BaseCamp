version 1.0

task Whoami {
  command <<<
    whoami
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}