class: CommandLineTool
id: stag_filter.pl.cwl
inputs:
- id: in_parser_formatformat_one
  doc: "|parser FORMAT\nFORMAT is one of xml, sxpr or itext, or the name of a perl\
    \ module\nxml assumed as default"
  type: boolean
  inputBinding:
    prefix: -p
- id: in_writer_formatformat_one
  doc: "|writer FORMAT\nFORMAT is one of xml, sxpr or itext, or the name of a perl\
    \ module"
  type: boolean
  inputBinding:
    prefix: -w
- id: in_countprints_number_pass
  doc: "|count\nprints the number of nodes that pass the test"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_filter_file
  doc: "|f\na file containing a perl subroutine (in place of the SUB argument)"
  type: boolean
  inputBinding:
    prefix: -filterfile
- id: in_query_tagval_qquery
  doc: "|query TAG1=VAL1 -q|query TAG2=VAL2 ... -q|query TAGN=VALN\nfilters based\
    \ on the field TAG\nother operators can be used too - eg <, <=, etc\nmultiple\
    \ q arguments can be passed in\nfor more complex operations, pass in your own\
    \ subroutine, see below"
  type: boolean
  inputBinding:
    prefix: -q
- id: in_interest
  doc: "SYNOPSIS\nstag-filter person -q name=fred file1.xml\nstag-filter person 'sub\
    \ {shift->get_name =~ /^A*/}' file1.xml\nstag-filter -p My::Foo -w sxpr record\
    \ 'sub{..}' file2"
  type: string
  inputBinding:
    position: 0
- id: in_subroutine_dot
  doc: if the subroutine passes, the node will be passed to the writer for
  type: string
  inputBinding:
    position: 0
- id: in_display
  doc: NODE
  type: string
  inputBinding:
    position: 1
- id: in_file
  doc: "the file to be parser. If no parser option is supplied, this is\nassumed to\
    \ a be a stag compatible syntax (xml, sxpr or itext);\notherwise you should parse\
    \ in a parser name or a parser module that\nthrows stag events"
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- stag-filter.pl
