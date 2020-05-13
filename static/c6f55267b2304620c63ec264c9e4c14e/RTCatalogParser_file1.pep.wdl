version 1.0

task RTCatalogParserFile1.pep.xml {
  input {
    String? optionsOptions
    File? fileFile1pepxml
    String? outfileOutfile
  }
  command <<<
    RTCatalogParser file1.pep.xml \
      ~{optionsOptions} \
      ~{fileFile1pepxml} \
      ~{outfileOutfile}
  >>>
}