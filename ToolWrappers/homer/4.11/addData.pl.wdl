version 1.0

task AddDatapl {
  command <<<
    addData_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}