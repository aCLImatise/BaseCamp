class: CommandLineTool
id: psiPerGene.py.cwl
inputs:
- id: in_m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: in_o
  doc: ''
  type: File
  inputBinding:
    prefix: -o
- id: in_e
  doc: ''
  type: File
  inputBinding:
    prefix: -e
- id: in_g
  doc: ''
  type: File
  inputBinding:
    prefix: -g
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_o
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_o)
cwlVersion: v1.1
baseCommand:
- psiPerGene.py
