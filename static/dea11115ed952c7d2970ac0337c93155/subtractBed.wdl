version 1.0

task SubtractBed {
  input {
    Boolean aA
    Boolean nN
    Boolean wbWb
    Boolean woWo
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
    subtractBed \
      ~{true="-A" false="" aA} \
      ~{true="-N" false="" nN} \
      ~{true="-wb" false="" wbWb} \
      ~{true="-wo" false="" woWo} \
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