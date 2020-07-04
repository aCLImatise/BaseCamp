class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pslLiftSubrangeBlat.cwl
inputs:
- id: t_sizes
  doc: '- lift target side based on tName, using target sizes from this tab separated
    file.'
  type: string
  inputBinding:
    prefix: -tSizes
- id: q_sizes
  doc: '- lift query side based on qName, using query sizes from this tab separated
    file.'
  type: string
  inputBinding:
    prefix: -qSizes
- id: is_psl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_psl
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pslLiftSubrangeBlat
