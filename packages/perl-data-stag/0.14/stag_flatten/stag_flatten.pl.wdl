version 1.0

task Stagflattenpl {
  input {
    Boolean? parser_formatformat_one
    Boolean? column_colcolcol_name
    Boolean? nestif_set_then
  }
  command <<<
    stag_flatten_pl \
      ~{if (parser_formatformat_one) then "-p" else ""} \
      ~{if (column_colcolcol_name) then "-c" else ""} \
      ~{if (nestif_set_then) then "-n" else ""}
  >>>
  parameter_meta {
    parser_formatformat_one: "|parser FORMAT\\nFORMAT is one of xml, sxpr or itext\\nxml assumed as default"
    column_colcolcol_name: "|column COL1,COL2,COL3,..\\nthe name of the columns/elements to write out\\nthis can be specified either with multiple -c arguments, or with a\\ncomma-seperated (no spaces) list of column (terminal node) names\\nafter a single -c"
    nestif_set_then: "|nest\\nif set, then the output will be a compress repeating values into the\\nsame row; each cell in the table will be enclosed by {}, and will\\ncontain a comma-delimited set of values"
  }
  output {
    File out_stdout = stdout()
  }
}