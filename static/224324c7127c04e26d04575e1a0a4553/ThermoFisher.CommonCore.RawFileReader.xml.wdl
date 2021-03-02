version 1.0

task ThermoFisherCommonCoreRawFileReaderxml {
  command <<<
    ThermoFisher_CommonCore_RawFileReader_xml
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}