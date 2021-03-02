class: CommandLineTool
id: papaa_compare_within_models.R.cwl
inputs:
- id: in_pan_can_model
  doc: location of pancan model
  type: string?
  inputBinding:
    prefix: --pancan_model
- id: in_alt_model
  doc: location of alt gene model
  type: string?
  inputBinding:
    prefix: --alt_model
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/papaa:0.1.9--0
cwlVersion: v1.1
baseCommand:
- papaa_compare_within_models.R
