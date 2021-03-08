class: CommandLineTool
id: planemo_container_register.cwl
inputs:
- id: in_recursive
  doc: Recursively perform command for
  type: boolean?
  inputBinding:
    prefix: --recursive
- id: in_cond_a_prefix
  doc: Conda prefix to use for conda dependency
  type: Directory?
  inputBinding:
    prefix: --conda_prefix
- id: in_cond_a_debug
  doc: Enable more verbose conda logging.
  type: boolean?
  inputBinding:
    prefix: --conda_debug
- id: in_cond_a_ensure_channels
  doc: "Ensure conda is configured with specified\ncomma separated list of channels."
  type: string?
  inputBinding:
    prefix: --conda_ensure_channels
- id: in_cond_a_use_local
  doc: "Use locally built packages while building\nConda environments."
  type: boolean?
  inputBinding:
    prefix: --conda_use_local
- id: in_output_directory
  doc: "Container registration directory (defaults\nto ~/.planemo/multi-package-containers."
  type: Directory?
  inputBinding:
    prefix: --output_directory
- id: in_message
  doc: "Commit and pull request message template for\nregistration interactions."
  type: string?
  inputBinding:
    prefix: --message
- id: in_no_pull_request
  doc: "Fork and create a pull request against\nBioContainers/multi-package-containers\
    \ for\nthese changes."
  type: boolean?
  inputBinding:
    prefix: --no_pull_request
- id: in_no_force_push
  doc: "Force push branch for pull request in case\nit already exists."
  type: boolean?
  inputBinding:
    prefix: --no_force_push
- id: in_tools_dot
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
- id: in_subdirectories_dot
  doc: --mulled_namespace TEXT         Build a mulled image with the specified
  type: string
  inputBinding:
    position: 1
- id: in_commands_dot
  doc: --conda_exec FILE               Location of conda executable.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/planemo:0.74.3--py_0
cwlVersion: v1.1
baseCommand:
- planemo
- container_register
