version 1.0

task SciexDataXYDatadll {
  command <<<
    Sciex_Data_XYData_dll
  >>>
  output {
    File out_stdout = stdout()
  }
}