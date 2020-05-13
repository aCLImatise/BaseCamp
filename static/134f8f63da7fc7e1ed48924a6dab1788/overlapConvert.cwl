class: CommandLineTool
id: overlapConvert.cwl
inputs:
- id: s
  doc: seqStore (needed for -coords, the default)
  type: boolean
  inputBinding:
    prefix: -S
- id: coords
  doc: output coordiantes on reads
  type: boolean
  inputBinding:
    prefix: -coords
- id: hangs
  doc: output hangs on reads
  type: boolean
  inputBinding:
    prefix: -hangs
- id: unaligned
  doc: output unaligned regions on each read
  type: boolean
  inputBinding:
    prefix: -unaligned
outputs: []
cwlVersion: v1.1
baseCommand:
- overlapConvert
