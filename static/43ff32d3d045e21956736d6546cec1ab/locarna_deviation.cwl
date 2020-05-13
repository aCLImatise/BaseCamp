class: CommandLineTool
id: locarna_deviation.cwl
inputs:
- id: deviation
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: aln_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: ref_aln_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- locarna_deviation
