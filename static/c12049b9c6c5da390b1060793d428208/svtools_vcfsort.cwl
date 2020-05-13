class: CommandLineTool
id: svtools_vcfsort.cwl
inputs:
- id: vcf_sort_input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: stdin
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: stdout
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- svtools
- vcfsort
