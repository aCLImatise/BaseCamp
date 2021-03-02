class: CommandLineTool
id: remove_alignment_gaps.cwl
inputs:
- id: in_species
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_alignment
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0
cwlVersion: v1.1
baseCommand:
- remove-alignment-gaps
