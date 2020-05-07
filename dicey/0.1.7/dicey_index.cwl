class: CommandLineTool
id: dicey_index.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: genome_fag_z
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: o
  doc: '[ --output ] arg (="genome.fm9")  output file'
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- dicey
- index
