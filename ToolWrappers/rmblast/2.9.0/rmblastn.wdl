version 1.0

task Rmblastn {
  command <<<
    rmblastn
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}