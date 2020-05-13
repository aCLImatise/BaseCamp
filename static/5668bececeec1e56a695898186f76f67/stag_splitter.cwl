class: CommandLineTool
id: stag_splitter.pl.cwl
inputs:
- id: dir
  doc: '|d DIR write files to this directory'
  type: boolean
  inputBinding:
    prefix: -dir
outputs: []
cwlVersion: v1.1
baseCommand:
- stag-splitter.pl
