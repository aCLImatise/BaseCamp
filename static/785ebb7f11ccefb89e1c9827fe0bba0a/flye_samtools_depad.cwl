class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/flye_samtools_depad.cwl
inputs:
- id: sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: de_pad
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- flye-samtools
- depad
