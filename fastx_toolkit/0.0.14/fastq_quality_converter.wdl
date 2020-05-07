version 1.0

task FastqQualityConverter {
  input {
    Boolean aA
    Boolean nN
    Boolean zZ
    String iI
    String fF
  }
  command <<<
    fastq_quality_converter \
      ~{true="-a" false="" aA} \
      ~{true="-n" false="" nN} \
      ~{true="-z" false="" zZ} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""}
  >>>
}