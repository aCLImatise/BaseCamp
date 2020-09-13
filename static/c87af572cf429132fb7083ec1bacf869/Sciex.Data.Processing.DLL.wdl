version 1.0

task SciexDataProcessingDLL {
  command <<<
    Sciex_Data_Processing_DLL
  >>>
  output {
    File out_stdout = stdout()
  }
}