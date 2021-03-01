version 1.0

task Clearcore2DataClientdll {
  command <<<
    Clearcore2_Data_Client_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}