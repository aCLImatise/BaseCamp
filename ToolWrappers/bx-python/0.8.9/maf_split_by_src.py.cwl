class: CommandLineTool
id: ../../../maf_split_by_src.py.cwl
inputs:
- id: in_out_prefix
  doc: ''
  type: string
  inputBinding:
    prefix: --outprefix
- id: in_component
  doc: ''
  type: string
  inputBinding:
    prefix: --component
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- maf_split_by_src.py
