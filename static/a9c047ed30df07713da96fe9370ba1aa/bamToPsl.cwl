class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bamToPsl.cwl
inputs:
- id: dots
  doc: '- output progress dot(.) every N alignments processed'
  type: string
  inputBinding:
    prefix: -dots
- id: in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_psl
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bamToPsl
