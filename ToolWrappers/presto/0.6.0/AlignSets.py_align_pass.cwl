class: CommandLineTool
id: AlignSets.py_align_pass.cwl
inputs:
- id: in_align_sets_do_tpy
  doc: ''
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
- AlignSets.py
- align-pass
