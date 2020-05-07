version 1.0

task FastaFromBed {
  input {
    Boolean fiFi
    Boolean foFo
    Boolean bedBed
    Boolean nameName
    Boolean nameName
    Boolean nameNameOnly
    Boolean splitSplit
    Boolean tabTab
    Boolean sS
    Boolean fullFullHeader
  }
  command <<<
    fastaFromBed \
      ~{true="-fi" false="" fiFi} \
      ~{true="-fo" false="" foFo} \
      ~{true="-bed" false="" bedBed} \
      ~{true="-name" false="" nameName} \
      ~{true="-name" false="" nameName} \
      ~{true="-nameOnly" false="" nameNameOnly} \
      ~{true="-split" false="" splitSplit} \
      ~{true="-tab" false="" tabTab} \
      ~{true="-s" false="" sS} \
      ~{true="-fullHeader" false="" fullFullHeader}
  >>>
}