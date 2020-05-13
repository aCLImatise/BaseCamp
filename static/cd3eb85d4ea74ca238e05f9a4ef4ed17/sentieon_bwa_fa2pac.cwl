class: CommandLineTool
id: sentieon_bwa_fa2pac.cwl
inputs:
- id: bwa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fa2pac
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_fasta
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_prefix
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: f
  doc: ''
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- sentieon-bwa
- fa2pac
