class: CommandLineTool
id: wg_blimp_delete_all_output.cwl
inputs:
- id: in_dry_run
  doc: Only dry-run deleting the pipeline output.
  type: boolean?
  inputBinding:
    prefix: --dry-run
- id: in_yes
  doc: Confirm the action without prompting.
  type: boolean?
  inputBinding:
    prefix: --yes
- id: in_config_yaml
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- wg-blimp
- delete-all-output
