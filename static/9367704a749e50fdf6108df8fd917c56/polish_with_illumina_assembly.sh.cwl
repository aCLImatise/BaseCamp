class: CommandLineTool
id: polish_with_illumina_assembly.sh.cwl
inputs:
- id: in_m
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
- id: in_t
  doc: ''
  type: long?
  inputBinding:
    prefix: -t
- id: in_q
  doc: ''
  type: string?
  inputBinding:
    prefix: -q
- id: in_r
  doc: ''
  type: string?
  inputBinding:
    prefix: -r
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- polish_with_illumina_assembly.sh
