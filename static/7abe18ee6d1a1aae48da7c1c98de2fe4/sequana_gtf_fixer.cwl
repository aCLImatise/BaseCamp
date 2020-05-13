class: CommandLineTool
id: sequana_gtf_fixer.cwl
inputs:
- id: gtf_fixer
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: n
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: input
  doc: input GTF file
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: output GTF file
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- sequana_gtf_fixer
