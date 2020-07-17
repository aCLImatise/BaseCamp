class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/run_galaxy_workflow.py.cwl
inputs:
- id: conf
  doc: A yaml file describing the galaxy credentials
  type: string
  inputBinding:
    prefix: --conf
- id: galaxy_instance
  doc: Galaxy server instance name
  type: string
  inputBinding:
    prefix: --galaxy-instance
- id: yaml_inputs_path
  doc: Path to Yaml detailing inputs
  type: string
  inputBinding:
    prefix: --yaml-inputs-path
- id: output_dir
  doc: Path to output directory
  type: string
  inputBinding:
    prefix: --output-dir
- id: history
  doc: Name of the history to create
  type: string
  inputBinding:
    prefix: --history
- id: workflow
  doc: Workflow to run
  type: string
  inputBinding:
    prefix: --workflow
- id: parameters
  doc: parameters file, by default json
  type: string
  inputBinding:
    prefix: --parameters
- id: parameters_yaml
  doc: read parameters file as yaml instead of json
  type: boolean
  inputBinding:
    prefix: --parameters-yaml
- id: debug
  doc: Print debug information
  type: boolean
  inputBinding:
    prefix: --debug
- id: allowed_errors
  doc: Yaml file with allowed steps that can have errors.
  type: string
  inputBinding:
    prefix: --allowed-errors
- id: state_file
  doc: Path to read and save the execution state file.
  type: string
  inputBinding:
    prefix: --state-file
- id: keep_histories
  doc: Keeps histories created, they will be purged if not.
  type: boolean
  inputBinding:
    prefix: --keep-histories
- id: keep_workflow
  doc: Keeps workflow created, it will be purged if not.
  type: boolean
  inputBinding:
    prefix: --keep-workflow
- id: publish
  doc: Keep result history and make it public/accesible.
  type: boolean
  inputBinding:
    prefix: --publish
- id: accessible
  doc: Keep result history and make it accessible via link only.
  type: boolean
  inputBinding:
    prefix: --accessible
outputs: []
cwlVersion: v1.1
baseCommand:
- run_galaxy_workflow.py
