class: CommandLineTool
id: bwa_fa2pac.cwl
inputs:
- id: in_fasta
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_prefix
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- bwa
- fa2pac
