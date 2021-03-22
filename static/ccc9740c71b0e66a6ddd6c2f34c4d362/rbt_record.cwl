class: CommandLineTool
id: rbt_record.cwl
inputs:
- id: in_rbt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_flags
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rust-bio-tools:0.20.0--heda7bfa_0
cwlVersion: v1.1
baseCommand:
- rbt
- record
