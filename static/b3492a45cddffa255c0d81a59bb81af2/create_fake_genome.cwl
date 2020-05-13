class: CommandLineTool
id: create_fake_genome.py.cwl
inputs:
- id: locus
  doc: locus in format <chr>:<start>-<end>
  type: string
  inputBinding:
    prefix: --locus
- id: strand
  doc: '{+,-}        strand of locus'
  type: boolean
  inputBinding:
    prefix: --strand
- id: output_prefix
  doc: Output prefix
  type: string
  inputBinding:
    prefix: --output_prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- create_fake_genome.py
