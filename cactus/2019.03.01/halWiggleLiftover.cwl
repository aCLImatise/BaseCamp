class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/halWiggleLiftover.cwl
inputs:
- id: hal_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: src_genome
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: src_wig
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: tgt_genome
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: tg_twig
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- halWiggleLiftover
