class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/generate_params_from_workflow.py.cwl
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
- id: output_dir
  doc: Path to output directory
  type: string
  inputBinding:
    prefix: --output-dir
- id: workflow
  doc: Workflow to run
  type: string
  inputBinding:
    prefix: --workflow
- id: debug
  doc: Print debug information
  type: boolean
  inputBinding:
    prefix: --debug
- id: include_internals
  doc: Include internal parameters
  type: boolean
  inputBinding:
    prefix: --include-internals
outputs: []
cwlVersion: v1.1
baseCommand:
- generate_params_from_workflow.py
