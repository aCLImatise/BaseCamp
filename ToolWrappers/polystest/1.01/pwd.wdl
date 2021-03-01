version 1.0

task Pwd {
  command <<<
    pwd
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}