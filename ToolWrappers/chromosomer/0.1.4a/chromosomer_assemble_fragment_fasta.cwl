class: CommandLineTool
id: chromosomer_assemble_fragment_fasta.cwl
inputs:
- id: in_s
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_chromosome_r
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_assemble
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_map
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_fragment_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_output_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- chromosomer
- assemble
- fragment_fasta
