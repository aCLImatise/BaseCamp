class: CommandLineTool
id: mimodd_reheader.cwl
inputs:
- id: template
  doc: template SAM file providing header information
  type: string
  inputBinding:
    position: 0
- id: input_file
  doc: input BAM file to reheader
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- mimodd
- reheader
