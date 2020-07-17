class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/align_trim.cwl
inputs:
- id: normalise
  doc: ''
  type: string
  inputBinding:
    prefix: --normalise
- id: report
  doc: ''
  type: string
  inputBinding:
    prefix: --report
- id: start
  doc: ''
  type: boolean
  inputBinding:
    prefix: --start
- id: bed_file
  doc: BED file containing the amplicon scheme
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- align_trim
