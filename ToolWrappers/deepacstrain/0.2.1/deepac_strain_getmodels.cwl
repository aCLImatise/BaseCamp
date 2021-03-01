class: CommandLineTool
id: deepac_strain_getmodels.cwl
inputs:
- id: in_sensitive
  doc: Rebuild the sensitive model.
  type: boolean?
  inputBinding:
    prefix: --sensitive
- id: in_rapid
  doc: Rebuild the rapid CNN model.
  type: boolean?
  inputBinding:
    prefix: --rapid
- id: in_deep_ac
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_get_models
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
  dockerPull: quay.io/biocontainers/deepacstrain:0.2.1--py_0
cwlVersion: v1.1
baseCommand:
- deepac-strain
- getmodels
