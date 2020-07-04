class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/anvi_db_info.cwl
inputs:
- id: self_key
  doc: The key you wish to set or change.
  type: string
  inputBinding:
    prefix: --self-key
- id: self_value
  doc: The value you wish to set for the self key.
  type: string
  inputBinding:
    prefix: --self-value
- id: just_do_it
  doc: Don't bother me with questions or warnings, just do it.
  type: boolean
  inputBinding:
    prefix: --just-do-it
- id: database_path
  doc: An anvi'o database for pan, profile, contigs, or auxiliary data
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-db-info
