class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sim_cover2.cwl
inputs:
- id: set_minimum_length
  doc: Set minimum overlap length to <n> (default = 40)
  type: string
  inputBinding:
    prefix: -o
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
outputs: []
cwlVersion: v1.1
baseCommand:
- sim-cover2
