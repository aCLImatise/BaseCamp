version 1.0

task Clearcore2DomainAcquisitionMethodsMassSpecdll {
  command <<<
    Clearcore2_Domain_Acquisition_Methods_MassSpec_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}