class: CommandLineTool
id: sidr_contigs..cwl
inputs:
- id: in_sid_r
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_args
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sidr:0.0.2a2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- sidr
- contigs.
