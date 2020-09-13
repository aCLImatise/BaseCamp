class: CommandLineTool
id: ../../../buildRefContigs.cwl
inputs:
- id: in_g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
- id: in_m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: in_min_overlap
  doc: fragments must overlap by at least this much
  type: boolean
  inputBinding:
    prefix: -minoverlap
- id: in_build_unitigs_input
  doc: build unitigs, for input to cgw
  type: boolean
  inputBinding:
    prefix: -U
- id: in_build_scaffolds_input
  doc: build scaffolds, for input to terminator
  type: boolean
  inputBinding:
    prefix: -S
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- buildRefContigs
