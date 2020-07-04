class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/hca.cwl
inputs:
- id: log_level
  doc: "['DEBUG', 'INFO', 'WARNING', 'ERROR', 'CRITICAL']"
  type: string
  inputBinding:
    prefix: --log-level
outputs: []
cwlVersion: v1.1
baseCommand:
- hca
