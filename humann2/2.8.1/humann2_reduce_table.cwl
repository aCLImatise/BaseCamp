class: CommandLineTool
id: humann2_reduce_table.cwl
inputs:
- id: verbose
  doc: additional output is printed
  type: boolean
  inputBinding:
    prefix: --verbose
- id: input
  doc: the input table
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: the output table
  type: string
  inputBinding:
    prefix: --output
- id: function
  doc: the function to apply
  type: string
  inputBinding:
    prefix: --function
- id: sort_by
  doc: sort the output by the selection
  type: string
  inputBinding:
    prefix: --sort-by
outputs: []
cwlVersion: v1.1
baseCommand:
- humann2_reduce_table
