class: CommandLineTool
id: bedtools_bedtobam.cwl
inputs:
- id: in_mapq
  doc: "Set the mappinq quality for the BAM records.\n(INT) Default: 255"
  type: boolean
  inputBinding:
    prefix: -mapq
- id: in_be_done_two
  doc: "The BED file is in BED12 format.  The BAM CIGAR\nstring will reflect BED \"\
    blocks\"."
  type: boolean
  inputBinding:
    prefix: -bed12
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bedtools
- bedtobam
