class: CommandLineTool
id: anvi_export_state.cwl
inputs:
- id: in_pan_or_profile_db
  doc: "Anvi'o pan or profile database (and even genes\ndatabase in appropriate contexts).\
    \ (default: None)"
  type: string?
  inputBinding:
    prefix: --pan-or-profile-db
- id: in_output_file
  doc: 'File path to store results. (default: None)'
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_state
  doc: 'The state name to export. (default: None)'
  type: string?
  inputBinding:
    prefix: --state
- id: in_list_states
  doc: 'Show available states and exit. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --list-states
- id: in_state_json
  doc: '🍺 More on `anvi-export-state`:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: 'File path to store results. (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-export-state
