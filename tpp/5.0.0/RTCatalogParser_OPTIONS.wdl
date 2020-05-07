version 1.0

task RTCatalogParserOPTIONS {
  input {
    File? fileFile1pepxml
    String? outfileOutfile
  }
  command <<<
    RTCatalogParser OPTIONS \
      ~{fileFile1pepxml} \
      ~{outfileOutfile}
  >>>
}