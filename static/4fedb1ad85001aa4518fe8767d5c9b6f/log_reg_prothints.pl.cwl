class: CommandLineTool
id: log_reg_prothints.pl.cwl
inputs:
- id: in_coef_zero
  doc: Default -4.00529
  type: double?
  inputBinding:
    prefix: --coef0
- id: in_coef_one
  doc: Default 4.73909 for mult_norm
  type: double?
  inputBinding:
    prefix: --coef1
- id: in_coef_two
  doc: Default 9.09026 for al_score
  type: double?
  inputBinding:
    prefix: --coef2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/braker2:2.1.6--hdfd78af_1
cwlVersion: v1.1
baseCommand:
- log_reg_prothints.pl
