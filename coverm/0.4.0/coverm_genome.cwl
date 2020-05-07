class: CommandLineTool
id: coverm_genome.cwl
inputs:
- id: single
  doc: '...'
  type: string
  inputBinding:
    prefix: --single
outputs: []
cwlVersion: v1.1
baseCommand:
- coverm
- genome
