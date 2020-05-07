class: CommandLineTool
id: biom_table_ids.cwl
inputs:
- id: input_fp
  doc: The input BIOM table  [required]
  type: File
  inputBinding:
    prefix: --input-fp
- id: observations
  doc: Grab observation IDs
  type: boolean
  inputBinding:
    prefix: --observations
outputs: []
cwlVersion: v1.1
baseCommand:
- biom
- table-ids
