class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bxtools_relabel.cwl
inputs:
- id: verbose
  doc: 'Select verbosity level (0-4). Default: 0 '
  type: boolean
  inputBinding:
    prefix: --verbose
- id: input_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bxtools
- relabel
