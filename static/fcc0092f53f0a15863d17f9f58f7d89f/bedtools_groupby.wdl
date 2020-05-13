version 1.0

task BedtoolsGroupby {
  input {
    Boolean defaultDefault
    Boolean fullFull
    Boolean inInHeader
    Boolean outOutHeader
    Boolean headerHeader
    Boolean ignorecaseIgnorecase
    Boolean precPrec
    Boolean delimDelim
  }
  command <<<
    bedtools groupby \
      ~{true="- Default" false="" defaultDefault} \
      ~{true="-full" false="" fullFull} \
      ~{true="-inheader" false="" inInHeader} \
      ~{true="-outheader" false="" outOutHeader} \
      ~{true="-header" false="" headerHeader} \
      ~{true="-ignorecase" false="" ignorecaseIgnorecase} \
      ~{true="-prec" false="" precPrec} \
      ~{true="-delim" false="" delimDelim}
  >>>
}