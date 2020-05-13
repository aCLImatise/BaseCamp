class: CommandLineTool
id: extendClearRanges.cwl
inputs:
- id: c
  doc: Use ckpName as the checkpoint name
  type: string
  inputBinding:
    prefix: -c
- id: n
  doc: The checkpoint to use
  type: string
  inputBinding:
    prefix: -n
- id: g
  doc: The gatekeeper store
  type: string
  inputBinding:
    prefix: -g
- id: c
  doc: '#        Start at a specific gap number'
  type: string
  inputBinding:
    prefix: -C
- id: b
  doc: Begin at a specific scaffold
  type: string
  inputBinding:
    prefix: -b
- id: e
  doc: End after a specific scaffold (INCLUSIVE)
  type: string
  inputBinding:
    prefix: -e
- id: o
  doc: Process only this scaffold
  type: string
  inputBinding:
    prefix: -o
- id: s
  doc: Skip this scaffold
  type: string
  inputBinding:
    prefix: -s
- id: o
  doc: '#        Process only this gap'
  type: string
  inputBinding:
    prefix: -O
- id: s
  doc: '#        Skip this gap'
  type: string
  inputBinding:
    prefix: -S
- id: i
  doc: The iteration of ECR; either 1 or 2
  type: string
  inputBinding:
    prefix: -i
- id: load
  doc: Load gkpStore into memory
  type: boolean
  inputBinding:
    prefix: -load
- id: v
  doc: Enable VERBOSE_MULTIALIGN for debugging
  type: boolean
  inputBinding:
    prefix: -V
outputs: []
cwlVersion: v1.1
baseCommand:
- extendClearRanges
