version 1.0

task Clearcore2DataAcquisitionClientdll {
  command <<<
    Clearcore2_Data_Acquisition_Client_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}