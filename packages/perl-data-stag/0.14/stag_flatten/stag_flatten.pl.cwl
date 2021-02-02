class: CommandLineTool
id: stag_flatten.pl.cwl
inputs:
- id: in_parser_formatformat_one
  doc: "|parser FORMAT\nFORMAT is one of xml, sxpr or itext\nxml assumed as default"
  type: boolean
  inputBinding:
    prefix: -p
- id: in_column_colcolcol_name
  doc: "|column COL1,COL2,COL3,..\nthe name of the columns/elements to write out\n\
    this can be specified either with multiple -c arguments, or with a\ncomma-seperated\
    \ (no spaces) list of column (terminal node) names\nafter a single -c"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_nestif_set_then
  doc: "|nest\nif set, then the output will be a compress repeating values into the\n\
    same row; each cell in the table will be enclosed by {}, and will\ncontain a comma-delimited\
    \ set of values"
  type: boolean
  inputBinding:
    prefix: -n
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- stag-flatten.pl
