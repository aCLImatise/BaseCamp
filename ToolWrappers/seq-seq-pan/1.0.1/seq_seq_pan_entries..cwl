class: CommandLineTool
id: seq_seq_pan_entries..cwl
inputs:
- id: in_seq_seq_pando_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- seq-seq-pan
- entries.
