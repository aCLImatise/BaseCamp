version 1.0

task BaseLibSdll {
  command <<<
    BaseLibS_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}