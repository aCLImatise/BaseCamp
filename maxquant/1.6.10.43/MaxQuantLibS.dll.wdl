version 1.0

task MaxQuantLibSdll {
  command <<<
    MaxQuantLibS_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}