class: CommandLineTool
id: samtools_calmd.cwl
inputs:
- id: fill_md
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: a_lnb_am
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: ref_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: e
  doc: change identical bases to '='
  type: boolean
  inputBinding:
    prefix: -e
- id: u
  doc: uncompressed BAM output (for piping)
  type: boolean
  inputBinding:
    prefix: -u
- id: b
  doc: compressed BAM output
  type: boolean
  inputBinding:
    prefix: -b
- id: s
  doc: the input is SAM with header
  type: boolean
  inputBinding:
    prefix: -S
- id: r
  doc: read-independent local realignment
  type: boolean
  inputBinding:
    prefix: -r
outputs: []
cwlVersion: v1.1
baseCommand:
- samtools
- calmd
