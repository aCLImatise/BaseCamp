class: CommandLineTool
id: rbt_vcf_split.cwl
inputs:
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output
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
  dockerPull: quay.io/biocontainers/rust-bio-tools:0.19.2--heda7bfa_0
cwlVersion: v1.1
baseCommand:
- rbt
- vcf-split
