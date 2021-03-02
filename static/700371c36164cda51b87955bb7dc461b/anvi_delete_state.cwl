class: CommandLineTool
id: anvi_delete_state.cwl
inputs:
- id: in_pan_or_profile_db
  doc: "Anvi'o pan or profile database (and even genes\ndatabase in appropriate contexts)."
  type: string?
  inputBinding:
    prefix: --pan-or-profile-db
- id: in_list_states
  doc: Show available states and exit.
  type: boolean?
  inputBinding:
    prefix: --list-states
- id: in_s
  doc: ''
  type: string?
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- anvi-delete-state
