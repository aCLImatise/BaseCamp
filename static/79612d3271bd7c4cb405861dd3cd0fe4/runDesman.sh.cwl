class: CommandLineTool
id: ../../../runDesman.sh.cwl
inputs:
- id: in_help_tran_df_dot_csv
  doc: ''
  type: boolean
  inputBinding:
    prefix: --helptran_df.csv
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- runDesman.sh
