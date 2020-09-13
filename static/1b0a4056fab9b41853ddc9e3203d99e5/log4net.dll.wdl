version 1.0

task Log4netdll {
  command <<<
    log4net_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}