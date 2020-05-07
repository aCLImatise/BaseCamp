class: CommandLineTool
id: differential_expression.sh_Mature_miRNA_expression.xls_run_info.cwl
inputs:
- id: output_dir
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: run_info
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- differential_expression.sh
- Mature_miRNA_expression.xls
- run_info
