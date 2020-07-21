class: CommandLineTool
id: ../../../bedpeToBam.cwl
inputs:
- id: mapq
  doc: 'Set the mappinq quality for the BAM records. (INT) Default: 255'
  type: boolean
  inputBinding:
    prefix: -mapq
- id: ub_am
  doc: Write uncompressed BAM output. Default writes compressed BAM.
  type: boolean
  inputBinding:
    prefix: -ubam
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
outputs: []
cwlVersion: v1.1
baseCommand:
- bedpeToBam
