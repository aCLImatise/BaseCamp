class: CommandLineTool
id: ../../../ovl_degr_dist.cwl
inputs:
- id: adjust_genome_length
  doc: Adjust genome length to get best match to distrib input from stdin
  type: boolean
  inputBinding:
    prefix: -m
- id: set_minimum_length
  doc: Set minimum overlap length to <n> (default = 40)
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- ovl-degr-dist
