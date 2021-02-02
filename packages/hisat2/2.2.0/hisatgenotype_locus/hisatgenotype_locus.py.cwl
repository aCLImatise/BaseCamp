class: CommandLineTool
id: hisatgenotype_locus.py.cwl
inputs:
- id: in_base
  doc: ''
  type: string
  inputBinding:
    prefix: --base
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hisatgenotype_locus.py
