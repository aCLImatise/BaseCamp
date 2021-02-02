class: CommandLineTool
id: RNAplot.cwl
inputs:
- id: in_layout_type
  doc: "Choose the layout algorithm. Simple radial\nlayout if 0, or naview if 1\n\
    (default=`1')"
  type: long
  inputBinding:
    prefix: --layout-type
- id: in_output_format
  doc: "|gml|xrna|svg\nSpecify output format. Available formats are:\nPostScript (ps),\
    \ Graph Meta Language (gml),\nScalable Vector Graphics (svg), and XRNA save\n\
    file (xrna). Output filenames will end in\n\".ps\" \".gml\" \".svg\" \".ss\",\n\
    respectively.\n(default=`ps')"
  type: File
  inputBinding:
    prefix: --output-format
- id: in_pre
  doc: "Add annotation macros to postscript file, and\nadd the postscript code in\
    \ \"string\" just\nbefore the code to draw the structure. This\nis an easy way\
    \ to add annotation."
  type: File
  inputBinding:
    prefix: --pre
- id: in_post
  doc: "Same as --pre but in contrast to adding the\nannotation macros. E.g to mark\
    \ position 15\nwith circle use --post \"15 cmark\""
  type: long
  inputBinding:
    prefix: --post
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_format
  doc: "|gml|xrna|svg\nSpecify output format. Available formats are:\nPostScript (ps),\
    \ Graph Meta Language (gml),\nScalable Vector Graphics (svg), and XRNA save\n\
    file (xrna). Output filenames will end in\n\".ps\" \".gml\" \".svg\" \".ss\",\n\
    respectively.\n(default=`ps')"
  type: File
  outputBinding:
    glob: $(inputs.in_output_format)
cwlVersion: v1.1
baseCommand:
- RNAplot
