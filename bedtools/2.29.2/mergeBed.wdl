version 1.0

task MergeBed {
  input {
    Boolean sS
    Boolean sS
    Boolean dD
    Boolean cC
    Boolean oO
    Boolean delimDelim
    Boolean precPrec
    Boolean bedBed
    String headerHeader
    Boolean noNoBuf
    Boolean iIObuf
  }
  command <<<
    mergeBed \
      ~{true="-s" false="" sS} \
      ~{true="-S" false="" sS} \
      ~{true="-d" false="" dD} \
      ~{true="-c" false="" cC} \
      ~{true="-o" false="" oO} \
      ~{true="-delim" false="" delimDelim} \
      ~{true="-prec" false="" precPrec} \
      ~{true="-bed" false="" bedBed} \
      ~{if defined(headerHeader) then ("-header " +  '"' + headerHeader + '"') else ""} \
      ~{true="-nobuf" false="" noNoBuf} \
      ~{true="-iobuf" false="" iIObuf}
  >>>
}