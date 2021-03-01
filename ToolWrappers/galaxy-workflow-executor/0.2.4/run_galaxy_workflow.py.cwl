class: CommandLineTool
id: run_galaxy_workflow.py.cwl
inputs:
- id: in_conf
  doc: A yaml file describing the galaxy credentials
  type: File?
  inputBinding:
    prefix: --conf
- id: in_galaxy_instance
  doc: Galaxy server instance name
  type: string?
  inputBinding:
    prefix: --galaxy-instance
- id: in_yaml_inputs_path
  doc: Path to Yaml detailing inputs
  type: File?
  inputBinding:
    prefix: --yaml-inputs-path
- id: in_output_dir
  doc: Path to output directory
  type: File?
  inputBinding:
    prefix: --output-dir
- id: in_history
  doc: Name of the history to create
  type: string?
  inputBinding:
    prefix: --history
- id: in_workflow
  doc: Workflow to run
  type: string?
  inputBinding:
    prefix: --workflow
- id: in_parameters
  doc: parameters file, by default json
  type: File?
  inputBinding:
    prefix: --parameters
- id: in_parameters_yaml
  doc: read parameters file as yaml instead of json
  type: boolean?
  inputBinding:
    prefix: --parameters-yaml
- id: in_debug
  doc: Print debug information
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_allowed_errors
  doc: Yaml file with allowed steps that can have errors.
  type: File?
  inputBinding:
    prefix: --allowed-errors
- id: in_state_file
  doc: Path to read and save the execution state file.
  type: File?
  inputBinding:
    prefix: --state-file
- id: in_keep_histories
  doc: Keeps histories created, they will be purged if not.
  type: boolean?
  inputBinding:
    prefix: --keep-histories
- id: in_keep_workflow
  doc: Keeps workflow created, it will be purged if not.
  type: boolean?
  inputBinding:
    prefix: --keep-workflow
- id: in_publish
  doc: Keep result history and make it public/accesible.
  type: boolean?
  inputBinding:
    prefix: --publish
- id: in_accessible
  doc: "Keep result history and make it accessible via link\nonly.\n"
  type: boolean?
  inputBinding:
    prefix: --accessible
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Path to output directory
  type: File?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/galaxy-workflow-executor:0.2.4--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- run_galaxy_workflow.py
