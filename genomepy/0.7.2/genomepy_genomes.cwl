class: CommandLineTool
id: genomepy_genomes.cwl
inputs:
- id: provider
  doc: provider
  type: string
  inputBinding:
    prefix: --provider
outputs: []
cwlVersion: v1.1
baseCommand:
- genomepy
- genomes
