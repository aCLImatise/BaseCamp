class: CommandLineTool
id: buildRefContigs.cwl
inputs:
- id: in_min_overlap
  doc: fragments must overlap by at least this much
  type: string?
  inputBinding:
    prefix: -minoverlap
- id: in_build_unitigs_input
  doc: build unitigs, for input to cgw
  type: boolean?
  inputBinding:
    prefix: -U
- id: in_build_scaffolds_input
  doc: build scaffolds, for input to terminator
  type: boolean?
  inputBinding:
    prefix: -S
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- buildRefContigs
