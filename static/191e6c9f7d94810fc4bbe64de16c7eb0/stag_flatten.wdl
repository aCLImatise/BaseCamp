version 1.0

task StagFlatten.pl {
  input {
    Boolean? parser_format_format
    Boolean? column_colcolcol_name
    Boolean? nest_set_then
  }
  command <<<
    stag-flatten.pl \
      ~{true="-p" false="" parser_format_format} \
      ~{true="-c" false="" column_colcolcol_name} \
      ~{true="-n" false="" nest_set_then}
  >>>
  parameter_meta {
    parser_format_format: "|parser FORMAT FORMAT is one of xml, sxpr or itext xml assumed as default"
    column_colcolcol_name: "|column COL1,COL2,COL3,.. the name of the columns/elements to write out this can be specified either with multiple -c arguments, or with a comma-seperated (no spaces) list of column (terminal node) names after a single -c"
    nest_set_then: "|nest if set, then the output will be a compress repeating values into the same row; each cell in the table will be enclosed by {}, and will contain a comma-delimited set of values"
  }
}