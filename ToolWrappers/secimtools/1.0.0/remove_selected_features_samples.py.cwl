class: CommandLineTool
id: remove_selected_features_samples.py.cwl
inputs:
- id: in_input
  doc: Input dataset in wide format.
  type: string?
  inputBinding:
    prefix: --input
- id: in_design
  doc: Design file.
  type: File?
  inputBinding:
    prefix: --design
- id: in_id
  doc: Name of the column with unique identifiers.
  type: string?
  inputBinding:
    prefix: --ID
- id: in_flags
  doc: Flag file.
  type: File?
  inputBinding:
    prefix: --flags
- id: in_flag_file_type
  doc: Type of flag file
  type: string?
  inputBinding:
    prefix: --flagfiletype
- id: in_flag_uniqid
  doc: "Name of the column with unique identifiers in the flag\nfiles."
  type: string?
  inputBinding:
    prefix: --flagUniqID
- id: in_flag_drop
  doc: Name of the flag/field you want to access.
  type: string?
  inputBinding:
    prefix: --flagDrop
- id: in_value
  doc: Cut Value
  type: string?
  inputBinding:
    prefix: --value
- id: in_condition
  doc: "Condition for the cutwhere 0=Equal to, 1=Greater than\nand 2=less than."
  type: long?
  inputBinding:
    prefix: --condition
- id: in_out_wide
  doc: Output file without the Drops.
  type: File?
  inputBinding:
    prefix: --outWide
- id: in_out_flags
  doc: "Output file for Drops.\n"
  type: File?
  inputBinding:
    prefix: --outFlags
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_wide
  doc: Output file without the Drops.
  type: File?
  outputBinding:
    glob: $(inputs.in_out_wide)
- id: out_out_flags
  doc: "Output file for Drops.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_flags)
hints: []
cwlVersion: v1.1
baseCommand:
- remove_selected_features_samples.py
