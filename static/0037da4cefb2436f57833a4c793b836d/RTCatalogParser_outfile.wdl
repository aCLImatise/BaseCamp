version 1.0

task RTCatalogParserOutfile {
  input {
    String? optionsOptions
    File? fileFile1pepxml
    String? outfileOutfile
  }
  command <<<
    RTCatalogParser outfile \
      ~{optionsOptions} \
      ~{fileFile1pepxml} \
      ~{outfileOutfile}
  >>>
}