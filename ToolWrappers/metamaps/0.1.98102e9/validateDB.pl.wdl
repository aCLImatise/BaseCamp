version 1.0

task ValidateDBpl {
  command <<<
    validateDB_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}