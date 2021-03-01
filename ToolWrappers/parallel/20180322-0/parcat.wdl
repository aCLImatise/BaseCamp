version 1.0

task Parcat {
  command <<<
    parcat
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}