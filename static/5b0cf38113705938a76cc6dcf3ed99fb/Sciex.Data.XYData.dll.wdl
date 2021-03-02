version 1.0

task SciexDataXYDatadll {
  command <<<
    Sciex_Data_XYData_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}