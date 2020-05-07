class: CommandLineTool
id: anvi_export_state.cwl
inputs:
- id: pan_or_profile_db
  doc: Anvi'o pan or profile database (and even genes database in appropriate contexts).
  type: string
  inputBinding:
    prefix: --pan-or-profile-db
- id: output_file
  doc: File path to store results.
  type: File
  inputBinding:
    prefix: --output-file
- id: state
  doc: The state name to export.
  type: string
  inputBinding:
    prefix: --state
- id: list_states
  doc: Show available states and exit.
  type: boolean
  inputBinding:
    prefix: --list-states
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-export-state
