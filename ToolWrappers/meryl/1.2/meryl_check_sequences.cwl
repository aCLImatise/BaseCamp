class: CommandLineTool
id: meryl_check_sequences.cwl
inputs:
- id: in_unknown
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
  dockerPull: quay.io/biocontainers/meryl:1.2--he1b5a44_0
cwlVersion: v1.1
baseCommand:
- meryl-check
- sequences
