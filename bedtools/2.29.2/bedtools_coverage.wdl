version 1.0

task BedtoolsCoverage {
  input {
    Boolean histHist
    Boolean dD
    String countsCounts
    Boolean meanMean
    Boolean sS
    Boolean sS
    Boolean fF
    Boolean fF
    Boolean rR
    Boolean eE
    Boolean splitSplit
    Boolean gG
    Boolean noNoNameCheck
    String sortedSorted
    Boolean bedBed
    String headerHeader
    Boolean noNoBuf
    Boolean iIObuf
  }
  command <<<
    bedtools coverage \
      ~{true="-hist" false="" histHist} \
      ~{true="-d" false="" dD} \
      ~{if defined(countsCounts) then ("-counts " +  '"' + countsCounts + '"') else ""} \
      ~{true="-mean" false="" meanMean} \
      ~{true="-s" false="" sS} \
      ~{true="-S" false="" sS} \
      ~{true="-f" false="" fF} \
      ~{true="-F" false="" fF} \
      ~{true="-r" false="" rR} \
      ~{true="-e" false="" eE} \
      ~{true="-split" false="" splitSplit} \
      ~{true="-g" false="" gG} \
      ~{true="-nonamecheck" false="" noNoNameCheck} \
      ~{if defined(sortedSorted) then ("-sorted " +  '"' + sortedSorted + '"') else ""} \
      ~{true="-bed" false="" bedBed} \
      ~{if defined(headerHeader) then ("-header " +  '"' + headerHeader + '"') else ""} \
      ~{true="-nobuf" false="" noNoBuf} \
      ~{true="-iobuf" false="" iIObuf}
  >>>
}