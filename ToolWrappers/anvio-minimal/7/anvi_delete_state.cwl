class: CommandLineTool
id: anvi_delete_state.cwl
inputs:
- id: in_pan_or_profile_db
  doc: "Anvi'o pan or profile database (and even genes\ndatabase in appropriate contexts).\
    \ (default: None)"
  type: string?
  inputBinding:
    prefix: --pan-or-profile-db
- id: in_state
  doc: ':( (default: None)'
  type: string?
  inputBinding:
    prefix: --state
- id: in_list_states
  doc: 'Show available states and exit. (default: False)'
  type: boolean?
  inputBinding:
    prefix: --list-states
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-delete-state
