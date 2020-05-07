version 1.0

task BedtoolsSpacing {
  input {
    Boolean bedBed
    String headerHeader
    Boolean noNoBuf
    Boolean iIObuf
    String? chr1Chr1
    String? chr1Chr1
    String? chr1Chr1
    String? chr1Chr1
    String? chr1Chr1
  }
  command <<<
    bedtools spacing \
      ~{chr1Chr1} \
      ~{true="-bed" false="" bedBed} \
      ~{if defined(headerHeader) then ("-header " +  '"' + headerHeader + '"') else ""} \
      ~{true="-nobuf" false="" noNoBuf} \
      ~{true="-iobuf" false="" iIObuf} \
      ~{chr1Chr1} \
      ~{chr1Chr1} \
      ~{chr1Chr1} \
      ~{chr1Chr1}
  >>>
}