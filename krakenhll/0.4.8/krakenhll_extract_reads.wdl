version 1.0

task KrakenhllExtractReads {
  input {
    Boolean aA
    Boolean fF
    Boolean iI
    String tT
    Boolean vV
    Boolean pP
  }
  command <<<
    krakenhll-extract-reads \
      ~{true="-a" false="" aA} \
      ~{true="-f" false="" fF} \
      ~{true="-i" false="" iI} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-p" false="" pP}
  >>>
}