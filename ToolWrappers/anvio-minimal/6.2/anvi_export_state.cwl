class: CommandLineTool
id: anvi_export_state.cwl
inputs:
- id: in_pan_or_profile_db
  doc: "Anvi'o pan or profile database (and even genes\ndatabase in appropriate contexts)."
  type: string?
  inputBinding:
    prefix: --pan-or-profile-db
- id: in_output_file
  doc: File path to store results.
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_state
  doc: The state name to export.
  type: string?
  inputBinding:
    prefix: --state
- id: in_list_states
  doc: Show available states and exit.
  type: boolean?
  inputBinding:
    prefix: --list-states
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: File path to store results.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- anvi-export-state
