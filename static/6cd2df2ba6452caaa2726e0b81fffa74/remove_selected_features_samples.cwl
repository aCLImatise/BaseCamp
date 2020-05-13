class: CommandLineTool
id: remove_selected_features_samples.py.cwl
inputs:
- id: input
  doc: Input dataset in wide format.
  type: string
  inputBinding:
    prefix: --input
- id: design
  doc: Design file.
  type: string
  inputBinding:
    prefix: --design
- id: id
  doc: Name of the column with unique identifiers.
  type: string
  inputBinding:
    prefix: --ID
- id: flags
  doc: Flag file.
  type: string
  inputBinding:
    prefix: --flags
- id: flag_file_type
  doc: Type of flag file
  type: string
  inputBinding:
    prefix: --flagfiletype
- id: flag_uniqid
  doc: Name of the column with unique identifiers in the flag files.
  type: string
  inputBinding:
    prefix: --flagUniqID
- id: flag_drop
  doc: Name of the flag/field you want to access.
  type: string
  inputBinding:
    prefix: --flagDrop
- id: value
  doc: Cut Value
  type: string
  inputBinding:
    prefix: --value
- id: condition
  doc: Condition for the cutwhere 0=Equal to, 1=Greater than and 2=less than.
  type: string
  inputBinding:
    prefix: --condition
- id: out_wide
  doc: Output file without the Drops.
  type: string
  inputBinding:
    prefix: --outWide
- id: out_flags
  doc: Output file for Drops.
  type: string
  inputBinding:
    prefix: --outFlags
outputs: []
cwlVersion: v1.1
baseCommand:
- remove_selected_features_samples.py
