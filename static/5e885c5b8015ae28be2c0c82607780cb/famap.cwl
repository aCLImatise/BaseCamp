class: CommandLineTool
id: famap.cwl
inputs:
- id: in_t
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: in_b
  doc: ''
  type: File
  inputBinding:
    prefix: -b
- id: in_hv
  doc: ''
  type: boolean
  inputBinding:
    prefix: -hV
- id: in_nucleotide_ambiquity_codes_allowed
  doc: '- nucleotide with ambiquity codes allowed'
  type: string
  inputBinding:
    position: 0
- id: in_nucleotide_ambiquity_codes_uppercase
  doc: '- nucleotide with ambiquity codes uppercase'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- famap
