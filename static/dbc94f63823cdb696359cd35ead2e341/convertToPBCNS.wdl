version 1.0

task ConvertToPBCNS {
  input {
    Boolean coverageCoverage
    Boolean threadsThreads
    Boolean pathPath
    Boolean prefixPrefix
    Boolean lengthLength
  }
  command <<<
    convertToPBCNS \
      ~{true="-coverage" false="" coverageCoverage} \
      ~{true="-threads" false="" threadsThreads} \
      ~{true="-path" false="" pathPath} \
      ~{true="-prefix" false="" prefixPrefix} \
      ~{true="-length" false="" lengthLength}
  >>>
}