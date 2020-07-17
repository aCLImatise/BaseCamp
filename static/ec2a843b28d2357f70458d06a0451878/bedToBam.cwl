class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bedToBam.cwl
inputs:
- id: mapq
  doc: 'Set the mappinq quality for the BAM records. (INT) Default: 255'
  type: boolean
  inputBinding:
    prefix: -mapq
- id: be_done_two
  doc: The BED file is in BED12 format.  The BAM CIGAR string will reflect BED "blocks".
  type: boolean
  inputBinding:
    prefix: -bed12
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
- bedToBam
