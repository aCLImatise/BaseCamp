class: CommandLineTool
id: biom_table_ids.cwl
inputs:
- id: in_input_fp
  doc: The input BIOM table  [required]
  type: File
  inputBinding:
    prefix: --input-fp
- id: in_observations
  doc: Grab observation IDs
  type: boolean
  inputBinding:
    prefix: --observations
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- biom
- table-ids
