class: CommandLineTool
id: overlapPair.cwl
inputs:
- id: s
  doc: Mandatory, path to seqStore
  type: string
  inputBinding:
    prefix: -S
- id: erate
  doc: Overlaps are computed at 'e' fraction error; must be larger than the original
    erate
  type: string
  inputBinding:
    prefix: -erate
- id: partial
  doc: Overlaps are 'overlapInCore -S' partial overlaps
  type: boolean
  inputBinding:
    prefix: -partial
- id: memory
  doc: Use up to 'm' GB of memory
  type: string
  inputBinding:
    prefix: -memory
- id: t
  doc: Use up to 'n' cores
  type: string
  inputBinding:
    prefix: -t
- id: invert
  doc: Invert the overlap A <-> B before aligning (they are not re-inverted before
    output)
  type: boolean
  inputBinding:
    prefix: -invert
outputs: []
cwlVersion: v1.1
baseCommand:
- overlapPair
