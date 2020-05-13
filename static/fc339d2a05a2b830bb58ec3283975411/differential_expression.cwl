class: CommandLineTool
id: differential_expression.sh_run_info.cwl
inputs:
- id: mature_mirna_expression_xls
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: run_info
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- differential_expression.sh
- run_info
