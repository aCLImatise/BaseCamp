version 1.0

task BaseDataAccessdll {
  command <<<
    BaseDataAccess_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}