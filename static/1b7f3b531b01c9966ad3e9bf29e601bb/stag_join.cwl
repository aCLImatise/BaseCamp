class: CommandLineTool
id: ../../../stag_join.pl.cwl
inputs:
- id: parser_format_format
  doc: '|parser FORMAT FORMAT is one of xml, sxpr or itext, or the name of a perl
    module xml assumed as default'
  type: boolean
  inputBinding:
    prefix: -p
- id: writer_format_format
  doc: '|writer FORMAT FORMAT is one of xml, sxpr or itext, or the name of a perl
    module'
  type: boolean
  inputBinding:
    prefix: -w
outputs: []
cwlVersion: v1.1
baseCommand:
- stag-join.pl
