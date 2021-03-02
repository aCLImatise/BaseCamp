version 1.0

task Bamcat {
  command <<<
    bamcat
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}