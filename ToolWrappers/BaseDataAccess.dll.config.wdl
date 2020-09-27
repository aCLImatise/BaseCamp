version 1.0

task BaseDataAccessdllconfig {
  command <<<
    BaseDataAccess_dll_config
  >>>
  output {
    File out_stdout = stdout()
  }
}