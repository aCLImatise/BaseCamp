class: CommandLineTool
id: expandCols.cwl
inputs:
- id: in_input_file_assumes
  doc: Input file. Assumes "stdin" if omitted.
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_specify_column_based
  doc: "Specify the column (1-based) that should be summarized.\n- Required."
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_expand
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_cols
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- expandCols
