class: CommandLineTool
id: efpa.cwl
inputs:
- id: in_symmetry
  doc: "(true, false) default: false\nsymmetry variants\n"
  type: boolean?
  inputBinding:
    prefix: -symmetry
- id: in_disabled
  doc: 'Options for Equidistant Frequency Permutation Arrays:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gecode:6.2.0--hb70a6f5_0
cwlVersion: v1.1
baseCommand:
- efpa
