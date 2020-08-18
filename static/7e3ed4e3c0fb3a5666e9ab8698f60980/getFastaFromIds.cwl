class: CommandLineTool
id: ../../../getFastaFromIds.py_out.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: get_fasta_from_ids_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: list
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fast_a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- getFastaFromIds.py
- out
