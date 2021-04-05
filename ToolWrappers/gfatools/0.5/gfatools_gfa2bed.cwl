class: CommandLineTool
id: gfatools_gfa2bed.cwl
inputs:
- id: in_merge_adjacent_intervals
  doc: merge adjacent intervals on stable sequences
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_in_dot_gfa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gfatools:0.5--hed695b0_0
cwlVersion: v1.1
baseCommand:
- gfatools
- gfa2bed
