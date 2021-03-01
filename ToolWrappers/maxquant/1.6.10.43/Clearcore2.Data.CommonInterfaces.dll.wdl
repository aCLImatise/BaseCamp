version 1.0

task Clearcore2DataCommonInterfacesdll {
  command <<<
    Clearcore2_Data_CommonInterfaces_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}