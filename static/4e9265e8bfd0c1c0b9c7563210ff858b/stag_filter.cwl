class: CommandLineTool
id: stag_filter.pl.cwl
inputs:
- id: node
  doc: the name of the node/element we are filtering on
  type: string
  inputBinding:
    position: 0
- id: file
  doc: the file to be parser. If no parser option is supplied, this is assumed to
    a be a stag compatible syntax (xml, sxpr or itext); otherwise you should parse
    in a parser name or a parser module that throws stag events
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- stag-filter.pl
