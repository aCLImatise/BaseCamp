class: CommandLineTool
id: planemo_brew_OPTIONS_TOOL_PATH.cwl
inputs:
- id: brew
  doc: Homebrew 'brew' executable to use.
  type: File
  inputBinding:
    prefix: --brew
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- brew
- OPTIONS
- TOOL_PATH
