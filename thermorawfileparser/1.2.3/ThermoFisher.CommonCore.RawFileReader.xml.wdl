version 1.0

task ThermoFisherCommonCoreRawFileReaderxml {
  command <<<
    ThermoFisher_CommonCore_RawFileReader_xml
  >>>
  output {
    File out_stdout = stdout()
  }
}