class: CommandLineTool
id: sim_cover2.cwl
inputs:
- id: coverage
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: read_len
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: genome_len
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: o
  doc: Set minimum overlap length to <n> (default = 40)
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- sim-cover2
