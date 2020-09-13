version 1.0

task MaxQuantLibdll {
  command <<<
    MaxQuantLib_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}