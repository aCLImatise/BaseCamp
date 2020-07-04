class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/autoAugPred.pl.cwl
inputs:
- id: genome
  doc: ''
  type: string
  inputBinding:
    prefix: --genome
- id: species
  doc: ''
  type: string
  inputBinding:
    prefix: --species
outputs: []
cwlVersion: v1.1
baseCommand:
- autoAugPred.pl
