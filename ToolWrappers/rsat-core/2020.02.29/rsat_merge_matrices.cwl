class: CommandLineTool
id: rsat_merge_matrices.cwl
inputs:
- id: in_merge_matrices
  doc: "\e[1mVERSION\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_pssm
  doc: "\e[1mUSAGE\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_width_dot
  doc: "\e[1mSEE ALSO\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_formats_dot
  doc: "\e[1m-id matrix_ID\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_rescan_matrix_dot
  doc: "\e[1m-o outputfile\e[0m"
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
- rsat
- merge-matrices
