class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pmp_bf.cwl
inputs:
- id: verbosity
  doc: '[1|2|3|4] (default 2)'
  type: boolean
  inputBinding:
    prefix: --verbosity
- id: pmp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tree_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: meme_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- pmp_bf
