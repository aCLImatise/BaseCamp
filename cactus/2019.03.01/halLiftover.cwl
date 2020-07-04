class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/halLiftover.cwl
inputs:
- id: out_bed_version
  doc: specified. [default = 0]
  type: string
  inputBinding:
    prefix: --outBedVersion
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
- id: src_bed
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: tgt_genome
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: tgt_bed
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- halLiftover
