class: CommandLineTool
id: mb_generate_negative_set_genome.cwl
inputs:
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_width
  doc: ''
  type: string
  inputBinding:
    prefix: --width
- id: in_number
  doc: ''
  type: long
  inputBinding:
    prefix: --number
- id: in_mb_generate_negative_set
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mb-generate-negative-set
- genome
