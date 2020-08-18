class: CommandLineTool
id: ../../../anvi_import_state.cwl
inputs:
- id: pan_or_profile_db
  doc: Anvi'o pan or profile database (and even genes database in appropriate contexts).
  type: string
  inputBinding:
    prefix: --pan-or-profile-db
- id: state
  doc: JSON serializable anvi'o state file.
  type: string
  inputBinding:
    prefix: --state
- id: name
  doc: State name.
  type: string
  inputBinding:
    prefix: --name
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-import-state
