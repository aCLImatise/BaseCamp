version 1.0

task RTCatalogParser {
  input {
    String outfile
  }
  command <<<
    RTCatalogParser \
      ~{outfile}
  >>>
  parameter_meta {
    outfile: ""
  }
}