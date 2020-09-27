class: CommandLineTool
id: anvi_import_state.cwl
inputs:
- id: in_pan_or_profile_db
  doc: "Anvi'o pan or profile database (and even genes\ndatabase in appropriate contexts)."
  type: string
  inputBinding:
    prefix: --pan-or-profile-db
- id: in_state
  doc: JSON serializable anvi'o state file.
  type: File
  inputBinding:
    prefix: --state
- id: in_name
  doc: "State name.\n"
  type: string
  inputBinding:
    prefix: --name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- anvi-import-state
