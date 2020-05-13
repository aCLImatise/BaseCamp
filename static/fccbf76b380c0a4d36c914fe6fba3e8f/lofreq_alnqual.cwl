class: CommandLineTool
id: lofreq_alnqual.cwl
inputs:
- id: a_lnb_am
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ref_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: b
  doc: BAM output (instead of SAM)
  type: boolean
  inputBinding:
    prefix: -b
- id: u
  doc: Uncompressed BAM output (for piping)
  type: boolean
  inputBinding:
    prefix: -u
- id: s
  doc: The input is SAM with header
  type: boolean
  inputBinding:
    prefix: -S
- id: e
  doc: Use default instead of extended BAQ (the latter gives better sensitivity but
    lower specificity)
  type: boolean
  inputBinding:
    prefix: -e
- id: b
  doc: Don't compute base alignment qualities
  type: boolean
  inputBinding:
    prefix: -B
- id: a
  doc: Don't compute indel alignment qualities
  type: boolean
  inputBinding:
    prefix: -A
- id: r
  doc: Recompute i.e. overwrite existing values
  type: boolean
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- lofreq
- alnqual
