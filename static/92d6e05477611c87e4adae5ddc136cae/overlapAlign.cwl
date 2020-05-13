class: CommandLineTool
id: overlapAlign.cwl
inputs:
- id: s
  doc: Mandatory, path to seqStore sequences.
  type: string
  inputBinding:
    prefix: -S
- id: o
  doc: Mandatorym path to ovlStore overlaps.
  type: string
  inputBinding:
    prefix: -O
- id: r
  doc: '[-endID]  Process reads bgnID to endID, inclusive.'
  type: string
  inputBinding:
    prefix: -r
- id: apply
  doc: <...>
  type: string
  inputBinding:
    prefix: -apply
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
- id: threads
  doc: Use up to 'n' cores
  type: string
  inputBinding:
    prefix: -threads
- id: vt
  doc: Increase debug verbosity. -Vt increases only trimming; -Va increases only alignment.
  type: boolean
  inputBinding:
    prefix: -Vt
outputs: []
cwlVersion: v1.1
baseCommand:
- overlapAlign
