class: CommandLineTool
id: comparePolishes.cwl
inputs:
- id: in_gff_three
  doc: ''
  type: boolean
  inputBinding:
    prefix: -gff3
- id: in_p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: in_b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: in_a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: in_c
  doc: ''
  type: string
  inputBinding:
    prefix: -c
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
- comparePolishes
