version 1.0

task JoinFilespy {
  command <<<
    joinFiles_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}