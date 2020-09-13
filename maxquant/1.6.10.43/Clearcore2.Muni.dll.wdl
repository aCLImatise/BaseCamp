version 1.0

task Clearcore2Munidll {
  command <<<
    Clearcore2_Muni_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}