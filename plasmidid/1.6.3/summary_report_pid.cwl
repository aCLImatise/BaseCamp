class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/summary_report_pid.py.cwl
inputs:
- id: input
  doc: REQUIRED.Input pID folder
  type: string
  inputBinding:
    prefix: --input
- id: group
  doc: Creates a group report instead of individual (Default True)
  type: boolean
  inputBinding:
    prefix: --group
outputs: []
cwlVersion: v1.1
baseCommand:
- summary_report_pid.py
