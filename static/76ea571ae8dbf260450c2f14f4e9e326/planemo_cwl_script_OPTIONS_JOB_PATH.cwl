class: CommandLineTool
id: planemo_cwl_script_OPTIONS_JOB_PATH.cwl
inputs:
- id: tool_path
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: job_path
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- cwl_script
- OPTIONS
- JOB_PATH
