class: CommandLineTool
id: meryl_simple.cwl
inputs:
- id: in_s
  doc: ''
  type: string?
  inputBinding:
    prefix: -S
- id: in_k
  doc: ''
  type: long?
  inputBinding:
    prefix: -k
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/meryl:1.2--he1b5a44_0
cwlVersion: v1.1
baseCommand:
- meryl-simple
