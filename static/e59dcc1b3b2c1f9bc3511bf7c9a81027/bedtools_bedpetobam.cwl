class: CommandLineTool
id: ../../../bedtools_bedpetobam.cwl
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
- id: bed_pe_to_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- bedpetobam
