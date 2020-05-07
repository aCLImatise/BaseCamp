class: CommandLineTool
id: overlapInCore.cwl
inputs:
- id: max_read_len
  doc: 512 -> hashstrings 2097152
  type: long
  inputBinding:
    position: 0
- id: max_read_len
  doc: 128 -> hashstrings 8388608
  type: long
  inputBinding:
    position: 1
- id: hash_strings
  doc: to 2^(30-m)
  type: string
  inputBinding:
    prefix: --hashstrings
outputs: []
cwlVersion: v1.1
baseCommand:
- overlapInCore
