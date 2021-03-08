class: CommandLineTool
id: MaskPrimers.py_SEQORIENT.cwl
inputs:
- id: in_mask_primers_do_tpy
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
- MaskPrimers.py
- SEQORIENT
