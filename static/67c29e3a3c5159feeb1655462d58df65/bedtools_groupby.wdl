version 1.0

task BedtoolsGroupby {
  input {
    Boolean? full
    Boolean? in_header
    Boolean? out_header
    Boolean? header
    Boolean? ignorecase
    Boolean? prec
    Boolean? delim
    Boolean? g
  }
  command <<<
    bedtools groupby \
      ~{true="-full" false="" full} \
      ~{true="-inheader" false="" in_header} \
      ~{true="-outheader" false="" out_header} \
      ~{true="-header" false="" header} \
      ~{true="-ignorecase" false="" ignorecase} \
      ~{true="-prec" false="" prec} \
      ~{true="-delim" false="" delim} \
      ~{true="-g" false="" g}
  >>>
  parameter_meta {
    full: "Print all columns from input file.  The first line in the group is used. Default: print only grouped columns."
    in_header: "Input file has a header line - the first line will be ignored."
    out_header: "Print header line in the output, detailing the column names.  If the input file has headers (-inheader), the output file will use the input's column names. If the input file has no headers, the output file will use \"col_1\", \"col_2\", etc. as the column names."
    header: "same as '-inheader -outheader'"
    ignorecase: "Group values regardless of upper/lower case."
    prec: "Sets the decimal precision for output (Default: 5)"
    delim: "Specify a custom delimiter for the collapse operations. - Example: -delim \"|\" - Default: \",\"."
    g: ""
  }
}