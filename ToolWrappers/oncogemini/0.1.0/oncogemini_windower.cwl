class: CommandLineTool
id: oncogemini_windower.cwl
inputs:
- id: in_name_column_added
  doc: The name of the column to be added to the variant
  type: long?
  inputBinding:
    prefix: -w
- id: in_type_windowed_requested
  doc: The type of windowed analysis requested.
  type: string?
  inputBinding:
    prefix: -t
- id: in_operation_applied_t
  doc: "The operation that should be applied to the -t values.\n"
  type: string?
  inputBinding:
    prefix: -o
- id: in_s
  doc: ''
  type: long?
  inputBinding:
    prefix: -s
- id: in_table_dot
  doc: -s STEP_SIZE          The step size for the windows in bp.
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
- oncogemini
- windower
