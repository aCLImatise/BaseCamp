class: CommandLineTool
id: ../../../find_all_snps.py.cwl
inputs:
- id: in_a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- find_all_snps.py
