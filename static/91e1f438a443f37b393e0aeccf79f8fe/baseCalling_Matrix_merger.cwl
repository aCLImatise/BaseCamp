class: CommandLineTool
id: baseCalling_Matrix_merger.cwl
inputs:
- id: in_base_calling_matrix_merger_do_tpl
  doc: Description
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
- baseCalling_Matrix_merger
