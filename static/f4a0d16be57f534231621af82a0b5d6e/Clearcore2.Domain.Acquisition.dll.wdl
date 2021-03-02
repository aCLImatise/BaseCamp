version 1.0

task Clearcore2DomainAcquisitiondll {
  command <<<
    Clearcore2_Domain_Acquisition_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}