version 1.0

task Fucat {
  command <<<
    fu_cat
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}