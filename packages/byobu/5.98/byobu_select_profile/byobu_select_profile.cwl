class: CommandLineTool
id: byobu_select_profile.cwl
inputs:
- id: in_list
  doc: list available profiles
  type: boolean
  inputBinding:
    prefix: --list
- id: in_background
  doc: set the background color
  type: boolean
  inputBinding:
    prefix: --background
- id: in_foreground
  doc: set the foreground color
  type: boolean
  inputBinding:
    prefix: --foreground
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- byobu-select-profile
