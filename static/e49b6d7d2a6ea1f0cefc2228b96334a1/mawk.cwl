class: CommandLineTool
id: mawk.cwl
inputs:
- id: w
  doc: show version information and exit.
  type: string
  inputBinding:
    prefix: -W
- id: w
  doc: show assembler-like listing of program and exit.
  type: string
  inputBinding:
    prefix: -W
- id: w
  doc: show this message and exit.
  type: string
  inputBinding:
    prefix: -W
- id: w
  doc: set unbuffered output, line-buffered input.
  type: long
  inputBinding:
    prefix: -W
- id: w
  doc: file     use file as program as well as last option.
  type: string
  inputBinding:
    prefix: -W
- id: w
  doc: =number set initial random seed.
  type: string
  inputBinding:
    prefix: -W
- id: w
  doc: =number adjust size of sprintf buffer.
  type: string
  inputBinding:
    prefix: -W
- id: w
  doc: do not consider "\n" a space.
  type: string
  inputBinding:
    prefix: -W
- id: w
  doc: show this message and exit.
  type: string
  inputBinding:
    prefix: -W
outputs: []
cwlVersion: v1.1
baseCommand:
- mawk
