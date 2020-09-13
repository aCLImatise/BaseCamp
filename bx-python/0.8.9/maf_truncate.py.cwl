class: CommandLineTool
id: ../../../maf_truncate.py.cwl
inputs:
- id: in_cols
  doc: ''
  type: string
  inputBinding:
    prefix: --cols
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- maf_truncate.py
