class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pirs_simulate.cwl
inputs:
- id: set_read_length
  doc: Set read length
  type: string
  inputBinding:
    prefix: -l
- id: set_coverage
  doc: Set coverage
  type: string
  inputBinding:
    prefix: -x
- id: set_insert_length
  doc: Set insert length mean
  type: string
  inputBinding:
    prefix: -m
- id: set_length_deviation
  doc: Set insert length standard deviation
  type: string
  inputBinding:
    prefix: -v
- id: simulate_jumping_library
  doc: Simulate jumping library
  type: boolean
  inputBinding:
    prefix: -j
- id: simulate_diploid_genome
  doc: Simulate from diploid genome produced by `pirs diploid'
  type: boolean
  inputBinding:
    prefix: -d
- id: set_output_prefix
  doc: Set output prefix
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- pirs
- simulate
