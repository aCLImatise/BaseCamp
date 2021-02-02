version 1.0

task FilterRascafConnectionpl {
  command <<<
    FilterRascafConnection_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}