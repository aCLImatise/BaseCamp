class: CommandLineTool
id: rMETL_tjiang@hit.edu.cn.cwl
inputs:
- id: in_rm_etl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rMETL
- tjiang@hit.edu.cn
