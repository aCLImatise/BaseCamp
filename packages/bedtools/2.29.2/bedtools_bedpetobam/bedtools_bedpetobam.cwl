class: CommandLineTool
id: bedtools_bedpetobam.cwl
inputs:
- id: in_mapq
  doc: "Set the mappinq quality for the BAM records.\n(INT) Default: 255"
  type: boolean
  inputBinding:
    prefix: -mapq
- id: in_ub_am
  doc: Write uncompressed BAM output. Default writes compressed BAM.
  type: boolean
  inputBinding:
    prefix: -ubam
- id: in_g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: in_bed_pe_to_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bedtools
- bedpetobam
