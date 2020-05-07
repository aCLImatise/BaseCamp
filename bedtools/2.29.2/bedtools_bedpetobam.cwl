class: CommandLineTool
id: bedtools_bedpetobam.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- bedpetobam
