class: CommandLineTool
id: _noreturn.cwl
inputs:
- id: in_system
  doc: "menu       [unix] Target operating system for\nend-of-line format (Values:\
    \ unix (Unix/Linux\nsystems); pc (Windows/DOS); mac (Apple\nMacintosh))"
  type: boolean?
  inputBinding:
    prefix: -system
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- _noreturn
