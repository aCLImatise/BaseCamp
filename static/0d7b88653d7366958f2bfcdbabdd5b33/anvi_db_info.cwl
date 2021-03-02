class: CommandLineTool
id: anvi_db_info.cwl
inputs:
- id: in_self_key
  doc: The key you wish to set or change.
  type: string?
  inputBinding:
    prefix: --self-key
- id: in_self_value
  doc: The value you wish to set for the self key.
  type: string?
  inputBinding:
    prefix: --self-value
- id: in_just_do_it
  doc: "Don't bother me with questions or warnings, just do\nit.\n"
  type: boolean?
  inputBinding:
    prefix: --just-do-it
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- anvi-db-info
