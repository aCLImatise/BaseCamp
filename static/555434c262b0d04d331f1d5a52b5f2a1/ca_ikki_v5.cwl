class: CommandLineTool
id: ../../../ca_ikki_v5.pl.cwl
inputs:
- id: this
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: as_mdot_spec
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: estimated_genome_size
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- ca_ikki_v5.pl
