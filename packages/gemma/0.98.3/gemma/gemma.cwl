class: CommandLineTool
id: gemma.cwl
inputs:
- id: in_license
  doc: show license information
  type: boolean?
  inputBinding:
    prefix: -license
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gemma:0.98.3--hb4ccc14_0
cwlVersion: v1.1
baseCommand:
- gemma
