version 1.0

task MapBed {
  input {
    Boolean cC
    Boolean oO
    Boolean delimDelim
    Boolean precPrec
    Boolean sS
    Boolean sS
    Boolean fF
    Boolean fF
    Boolean rR
    Boolean eE
    Boolean splitSplit
    Boolean gG
    Boolean noNoNameCheck
    Boolean bedBed
    String headerHeader
    Boolean noNoBuf
    Boolean iIObuf
  }
  command <<<
    mapBed \
      ~{true="-c" false="" cC} \
      ~{true="-o" false="" oO} \
      ~{true="-delim" false="" delimDelim} \
      ~{true="-prec" false="" precPrec} \
      ~{true="-s" false="" sS} \
      ~{true="-S" false="" sS} \
      ~{true="-f" false="" fF} \
      ~{true="-F" false="" fF} \
      ~{true="-r" false="" rR} \
      ~{true="-e" false="" eE} \
      ~{true="-split" false="" splitSplit} \
      ~{true="-g" false="" gG} \
      ~{true="-nonamecheck" false="" noNoNameCheck} \
      ~{true="-bed" false="" bedBed} \
      ~{if defined(headerHeader) then ("-header " +  '"' + headerHeader + '"') else ""} \
      ~{true="-nobuf" false="" noNoBuf} \
      ~{true="-iobuf" false="" iIObuf}
  >>>
}