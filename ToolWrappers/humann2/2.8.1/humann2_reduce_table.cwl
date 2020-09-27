class: CommandLineTool
id: humann2_reduce_table.cwl
inputs:
- id: in_verbose
  doc: additional output is printed
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_input
  doc: the input table
  type: string
  inputBinding:
    prefix: --input
- id: in_output
  doc: the output table
  type: string
  inputBinding:
    prefix: --output
- id: in_function
  doc: the function to apply
  type: string
  inputBinding:
    prefix: --function
- id: in_sort_by
  doc: "sort the output by the selection\n"
  type: string
  inputBinding:
    prefix: --sort-by
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- humann2_reduce_table
