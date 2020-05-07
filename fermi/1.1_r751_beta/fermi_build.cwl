class: CommandLineTool
id: fermi_build.cwl
inputs:
- id: in_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: b
  doc: use a small marker per 2^(INT+3) bytes [3]
  type: long
  inputBinding:
    prefix: -b
- id: f
  doc: force to overwrite the output file (effective with -o)
  type: boolean
  inputBinding:
    prefix: -f
- id: i
  doc: append the FM-index to the existing FILE [null]
  type: File
  inputBinding:
    prefix: -i
- id: l
  doc: trim read down to INT bp [inf]
  type: long
  inputBinding:
    prefix: -l
- id: o
  doc: output file name [null]
  type: File
  inputBinding:
    prefix: -o
- id: o
  doc: do not trim 1bp for reads whose forward and reverse are identical
  type: boolean
  inputBinding:
    prefix: -O
- id: s
  doc: number of symbols to process at a time [250000000]
  type: long
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- build
