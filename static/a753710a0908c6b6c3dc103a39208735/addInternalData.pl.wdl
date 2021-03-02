version 1.0

task AddInternalDatapl {
  command <<<
    addInternalData_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}