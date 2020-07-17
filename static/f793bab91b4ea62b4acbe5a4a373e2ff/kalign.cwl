class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/kalign.cwl
inputs:
- id: format
  doc: ': Output format. [Fasta]'
  type: boolean
  inputBinding:
    prefix: --format
- id: reformat
  doc: ': Reformat existing alignment. [NA]'
  type: boolean
  inputBinding:
    prefix: --reformat
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- kalign
