class: CommandLineTool
id: planemo_cwl_script.cwl
inputs:
- id: in_no_container
  doc: "--output_dir PATH\n--base_dir PATH\n--help             Show this message and\
    \ exit.\n"
  type: boolean
  inputBinding:
    prefix: --no_container
- id: in_tool_path
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_job_path
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
- planemo
- cwl_script
