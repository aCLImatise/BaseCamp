class: CommandLineTool
id: deepac_strain_convert.cwl
inputs:
- id: in_weights
  doc: Use prepared weights instead of the model file.
  type: boolean?
  inputBinding:
    prefix: --weights
- id: in_in_it
  doc: Initialize a random model from config.
  type: boolean?
  inputBinding:
    prefix: --init
- id: in_config
  doc: Training config file.
  type: string
  inputBinding:
    position: 0
- id: in_model
  doc: Saved model.
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
- convert
