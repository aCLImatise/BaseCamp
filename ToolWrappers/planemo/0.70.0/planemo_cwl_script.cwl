class: CommandLineTool
id: planemo_cwl_script.cwl
inputs:
- id: in_script_dot
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- planemo
- cwl_script
