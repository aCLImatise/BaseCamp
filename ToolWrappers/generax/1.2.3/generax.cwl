class: CommandLineTool
id: generax.cwl
inputs:
- id: in_rec_model
  doc: '{UndatedDL, UndatedDTL, Auto}'
  type: string?
  inputBinding:
    prefix: --rec-model
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/generax:1.2.3--h78e549b_0
cwlVersion: v1.1
baseCommand:
- generax
