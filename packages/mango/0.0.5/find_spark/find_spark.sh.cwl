class: CommandLineTool
id: find_spark.sh.cwl
inputs:
- id: in_which
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- find-spark.sh
