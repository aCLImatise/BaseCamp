class: CommandLineTool
id: RNAplot.cwl
inputs:
- id: layout_type
  doc: Choose the layout algorithm. Simple radial  layout if 0, or naview if 1 (default=`1')
  type: long
  inputBinding:
    prefix: --layout-type
- id: output_format
  doc: "|gml|xrna|svg Specify output format. Available formats are:  PostScript (ps),\
    \ Graph Meta Language (gml),  Scalable Vector Graphics (svg), and XRNA save  file\
    \ (xrna). Output filenames will end in  \".ps\" \".gml\" \".svg\" \".ss\",  respectively.\
    \ (default=`ps')"
  type: string
  inputBinding:
    prefix: --output-format
- id: pre
  doc: Add annotation macros to postscript file, and  add the postscript code in "string"
    just  before the code to draw the structure. This  is an easy way to add annotation.
  type: string
  inputBinding:
    prefix: --pre
- id: post
  doc: Same as --pre but in contrast to adding the  annotation macros. E.g to mark
    position 15  with circle use --post "15 cmark"
  type: string
  inputBinding:
    prefix: --post
outputs: []
cwlVersion: v1.1
baseCommand:
- RNAplot
