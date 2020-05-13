class: CommandLineTool
id: sum.cwl
inputs:
- id: r
  doc: use BSD sum algorithm, use 1K blocks
  type: boolean
  inputBinding:
    prefix: -r
- id: sysv
  doc: use System V sum algorithm, use 512 bytes blocks
  type: boolean
  inputBinding:
    prefix: --sysv
outputs: []
cwlVersion: v1.1
baseCommand:
- sum
