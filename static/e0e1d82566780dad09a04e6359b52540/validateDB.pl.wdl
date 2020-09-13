version 1.0

task ValidateDBpl {
  command <<<
    validateDB_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}