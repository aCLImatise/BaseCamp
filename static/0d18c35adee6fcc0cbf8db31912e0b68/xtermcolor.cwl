class: CommandLineTool
id: xtermcolor.cwl
inputs:
- id: in_color
  doc: Color to convert
  type: string?
  inputBinding:
    prefix: --color
- id: in_compat
  doc: "Compatibility mode. Defaults to xterm.\n"
  type: string?
  inputBinding:
    prefix: --compat
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- xtermcolor
