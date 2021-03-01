version 1.0

task BaseDataAccessdll {
  command <<<
    BaseDataAccess_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}