class: CommandLineTool
id: ../../../AlignSets.py_align_fail.cwl
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
cwlVersion: v1.1
baseCommand:
- AlignSets.py
- align-fail
