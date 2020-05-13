class: CommandLineTool
id: bamtools_header.cwl
inputs:
- id: in
  doc: the input BAM file(s) [stdin]
  type: string
  inputBinding:
    prefix: -in
- id: list
  doc: the input BAM file list, one line per file
  type: File
  inputBinding:
    prefix: -list
outputs: []
cwlVersion: v1.1
baseCommand:
- bamtools
- header
