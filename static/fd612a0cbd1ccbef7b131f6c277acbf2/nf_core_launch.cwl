class: CommandLineTool
id: nf_core_launch.cwl
inputs:
- id: in_revision
  doc: Release/branch/SHA of the project to run (if remote)
  type: string?
  inputBinding:
    prefix: --revision
- id: in_id
  doc: ID for web-gui launch parameter set
  type: string?
  inputBinding:
    prefix: --id
- id: in_command_only
  doc: Create Nextflow command with params (no params file)
  type: boolean?
  inputBinding:
    prefix: --command-only
- id: in_params_out
  doc: Path to save run parameters file
  type: File?
  inputBinding:
    prefix: --params-out
- id: in_params_in
  doc: Set of input run params to use from a previous run
  type: File?
  inputBinding:
    prefix: --params-in
- id: in_save_all
  doc: Save all parameters, even if unchanged from default
  type: boolean?
  inputBinding:
    prefix: --save-all
- id: in_url
  doc: Customise the builder URL (for development work)
  type: string?
  inputBinding:
    prefix: --url
- id: in_pipeline_name
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
  dockerPull: quay.io/biocontainers/nf-core:1.12.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- nf-core
- launch
