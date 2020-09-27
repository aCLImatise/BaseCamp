class: CommandLineTool
id: planemo_brew.cwl
inputs:
- id: in_brew
  doc: Homebrew 'brew' executable to use.
  type: File
  inputBinding:
    prefix: --brew
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
- brew
