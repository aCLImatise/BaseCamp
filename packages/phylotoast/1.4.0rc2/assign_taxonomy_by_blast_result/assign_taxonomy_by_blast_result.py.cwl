class: CommandLineTool
id: assign_taxonomy_by_blast_result.py.cwl
inputs:
- id: in_t
  doc: ''
  type: boolean
  inputBinding:
    prefix: -t
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- assign_taxonomy_by_blast_result.py
