version 1.0

task MsLibdll {
  command <<<
    MsLib_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}