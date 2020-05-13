class: CommandLineTool
id: planemo_cwl_script_TOOL_PATH.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tool_path
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: job_path
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- cwl_script
- TOOL_PATH
