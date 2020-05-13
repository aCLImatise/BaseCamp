class: CommandLineTool
id: group_ORF_sequences.py.cwl
inputs:
- id: de_duplicate
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: orf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: faa
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 3
- id: input_faa
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: output_prefix
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: is_p_bid
  doc: ''
  type: boolean
  inputBinding:
    prefix: --is_pbid
outputs: []
cwlVersion: v1.1
baseCommand:
- group_ORF_sequences.py
