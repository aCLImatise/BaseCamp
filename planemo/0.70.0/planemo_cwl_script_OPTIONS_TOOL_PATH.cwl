class: CommandLineTool
id: planemo_cwl_script_OPTIONS_TOOL_PATH.cwl
inputs:
- id: job_path
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- cwl_script
- OPTIONS
- TOOL_PATH
