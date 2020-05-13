class: CommandLineTool
id: buildRefContigs.cwl
inputs:
- id: min_overlap
  doc: fragments must overlap by at least this much
  type: boolean
  inputBinding:
    prefix: -minoverlap
- id: u
  doc: build unitigs, for input to cgw
  type: boolean
  inputBinding:
    prefix: -U
- id: s
  doc: build scaffolds, for input to terminator
  type: boolean
  inputBinding:
    prefix: -S
outputs: []
cwlVersion: v1.1
baseCommand:
- buildRefContigs
