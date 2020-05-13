class: CommandLineTool
id: biom_normalize_table.cwl
inputs:
- id: input_fp
  doc: The input BIOM table  [required]
  type: File
  inputBinding:
    prefix: --input-fp
- id: output_fp
  doc: An output file-path
  type: File
  inputBinding:
    prefix: --output-fp
- id: relative_abund
  doc: convert table to relative abundance
  type: boolean
  inputBinding:
    prefix: --relative-abund
- id: presence_absence
  doc: convert table to presence/absence
  type: boolean
  inputBinding:
    prefix: --presence-absence
- id: axis
  doc: '[sample|observation] The axis to normalize over'
  type: boolean
  inputBinding:
    prefix: --axis
outputs: []
cwlVersion: v1.1
baseCommand:
- biom
- normalize-table
