class: CommandLineTool
id: AlignRecords.py_align_pass.cwl
inputs:
- id: in_align_records_do_tpy
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
- AlignRecords.py
- align-pass
