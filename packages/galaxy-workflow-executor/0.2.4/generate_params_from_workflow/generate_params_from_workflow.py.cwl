class: CommandLineTool
id: generate_params_from_workflow.py.cwl
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
- id: in_output_dir
  doc: Path to output directory
  type: File?
  inputBinding:
    prefix: --output-dir
- id: in_workflow
  doc: Workflow to run
  type: string?
  inputBinding:
    prefix: --workflow
- id: in_debug
  doc: Print debug information
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_include_internals
  doc: Include internal parameters
  type: boolean?
  inputBinding:
    prefix: --include-internals
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
- generate_params_from_workflow.py
