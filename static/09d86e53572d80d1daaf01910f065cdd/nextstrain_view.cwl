class: CommandLineTool
id: nextstrain_view.cwl
inputs:
- id: in_help_all
  doc: Show a full help message of all options and exit
  type: boolean?
  inputBinding:
    prefix: --help-all
- id: in_allow_remote_access
  doc: "Allow other computers on the network to access the\nwebsite (default: False)"
  type: boolean?
  inputBinding:
    prefix: --allow-remote-access
- id: in_port
  doc: Listen on the given port instead of the default port
  type: long?
  inputBinding:
    prefix: --port
- id: in_run_again_see
  doc: Run again with --help-all instead to see more options.
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nextstrain-cli:3.0.3--py_0
cwlVersion: v1.1
baseCommand:
- nextstrain
- view
