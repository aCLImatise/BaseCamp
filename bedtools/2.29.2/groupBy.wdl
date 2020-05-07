version 1.0

task GroupBy {
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
    groupBy \
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