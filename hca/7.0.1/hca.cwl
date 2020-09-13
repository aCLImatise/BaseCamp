class: CommandLineTool
id: ../../../hca.cwl
inputs:
- id: in_log_level
  doc: "['DEBUG', 'INFO', 'WARNING', 'ERROR', 'CRITICAL']\n"
  type: string
  inputBinding:
    prefix: --log-level
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hca
