class: CommandLineTool
id: ../../../expandCols.cwl
inputs:
- id: input_file_assumes
  doc: Input file. Assumes "stdin" if omitted.
  type: boolean
  inputBinding:
    prefix: -i
- id: specify_column_based
  doc: Specify the column (1-based) that should be summarized. - Required.
  type: boolean
  inputBinding:
    prefix: -c
- id: bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: expand
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: cols
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- expandCols
