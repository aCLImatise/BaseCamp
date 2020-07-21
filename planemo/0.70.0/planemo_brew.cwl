class: CommandLineTool
id: ../../../planemo_brew.cwl
inputs:
- id: brew
  doc: Homebrew 'brew' executable to use.
  type: File
  inputBinding:
    prefix: --brew
- id: tool_path
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- brew
