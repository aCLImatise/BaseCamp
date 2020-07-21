class: CommandLineTool
id: ../../../get_sequences_for_meme.py_outhead.cwl
inputs:
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: get_sequences_for_meme_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: summary_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: ec_dir
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_head
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- get_sequences_for_meme.py
- outhead
