version 1.0

task BaseLibdll {
  command <<<
    BaseLib_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}