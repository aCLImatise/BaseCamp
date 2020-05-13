class: CommandLineTool
id: xtermcolor.cwl
inputs:
- id: color
  doc: Color to convert
  type: string
  inputBinding:
    prefix: --color
- id: compat
  doc: Compatibility mode. Defaults to xterm.
  type: string
  inputBinding:
    prefix: --compat
outputs: []
cwlVersion: v1.1
baseCommand:
- xtermcolor
