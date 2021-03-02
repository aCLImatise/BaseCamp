class: CommandLineTool
id: fc_dedup_h_tigs.py.cwl
inputs:
- id: in_ctg_id
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fc_dedup_h_tigs.py
