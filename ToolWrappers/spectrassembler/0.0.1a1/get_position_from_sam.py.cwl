class: CommandLineTool
id: ../../../get_position_from_sam.py.cwl
inputs:
- id: in_root
  doc: directory where to store position file.
  type: File
  inputBinding:
    prefix: --root
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- get_position_from_sam.py
