version 1.0

task SciexDataSimpleTypesdll {
  command <<<
    Sciex_Data_SimpleTypes_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}