class: CommandLineTool
id: taco_refcomp.cwl
inputs:
- id: in_cp_at
  doc: Run CPAT tool to for coding potential scoring. (CPAT
  type: boolean
  inputBinding:
    prefix: --cpat
- id: in_p
  doc: ''
  type: long
  inputBinding:
    prefix: -p
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- taco_refcomp
