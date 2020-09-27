version 1.0

task SciexDataSimpleTypesdll {
  command <<<
    Sciex_Data_SimpleTypes_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}