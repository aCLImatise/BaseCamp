class: CommandLineTool
id: anvi_import_state.cwl
inputs:
- id: in_pan_or_profile_db
  doc: "Anvi'o pan or profile database (and even genes\ndatabase in appropriate contexts).\
    \ (default: None)"
  type: string?
  inputBinding:
    prefix: --pan-or-profile-db
- id: in_json_serializable_anvio
  doc: "JSON serializable anvi'o state file. (default: None)"
  type: File?
  inputBinding:
    prefix: --state
- id: in_name
  doc: 'State name. (default: None)'
  type: string?
  inputBinding:
    prefix: --name
- id: in__more_anviimportstate
  doc: '🍺 More on `anvi-import-state`:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-import-state
