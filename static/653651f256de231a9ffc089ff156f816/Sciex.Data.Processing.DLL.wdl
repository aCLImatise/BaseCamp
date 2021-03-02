version 1.0

task SciexDataProcessingDLL {
  command <<<
    Sciex_Data_Processing_DLL
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}