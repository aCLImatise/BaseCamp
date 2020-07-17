class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/autoAug.pl.cwl
inputs:
- id: species
  doc: ''
  type: string
  inputBinding:
    prefix: --species
- id: genome
  doc: ''
  type: string
  inputBinding:
    prefix: --genome
- id: cdna
  doc: ''
  type: string
  inputBinding:
    prefix: --cdna
- id: training_set
  doc: ''
  type: string
  inputBinding:
    prefix: --trainingset
outputs: []
cwlVersion: v1.1
baseCommand:
- autoAug.pl
