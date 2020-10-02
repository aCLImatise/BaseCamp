class: CommandLineTool
id: planemo_shed_build.cwl
inputs:
- id: in_tool_path
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
- planemo
- shed_build
