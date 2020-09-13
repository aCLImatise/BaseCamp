version 1.0

task HsErrPid16613log {
  command <<<
    hs_err_pid16613_log
  >>>
  output {
    File out_stdout = stdout()
  }
}