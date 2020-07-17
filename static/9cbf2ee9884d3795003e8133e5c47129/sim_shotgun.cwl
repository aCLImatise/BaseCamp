class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sim_shotgun.cwl
inputs:
- id: set_minimum_reads
  doc: Set minimum reads in a contig to <n> (default = 2)
  type: string
  inputBinding:
    prefix: -c
- id: set_minimum_length
  doc: Set minimum overlap length to <n> (default = 40)
  type: string
  inputBinding:
    prefix: -o
- id: set_readlength_deviation
  doc: Set read-length std deviation to <n> (default = 0)
  type: string
  inputBinding:
    prefix: -s
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
- sim-shotgun
