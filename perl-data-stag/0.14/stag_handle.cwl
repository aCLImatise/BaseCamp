class: CommandLineTool
id: stag_handle.pl.cwl
inputs:
- id: sub
  doc: '|s PERL a perl hashref containing handlers'
  type: boolean
  inputBinding:
    prefix: -sub
- id: trap
  doc: '|t ELEMENT=SUB'
  type: boolean
  inputBinding:
    prefix: -trap
outputs: []
cwlVersion: v1.1
baseCommand:
- stag-handle.pl
