class: CommandLineTool
id: GapCloser.cwl
inputs:
- id: a
  doc: <string>        input scaffold file name, required.
  type: boolean
  inputBinding:
    prefix: -a
- id: b
  doc: <string>        input library info file name, required.
  type: boolean
  inputBinding:
    prefix: -b
- id: o
  doc: <string>        output file name, required.
  type: boolean
  inputBinding:
    prefix: -o
- id: l
  doc: <int>           maximum read length (<=155), default=100.
  type: boolean
  inputBinding:
    prefix: -l
- id: p
  doc: <int>           overlap param(<=31), default=25.
  type: boolean
  inputBinding:
    prefix: -p
- id: t
  doc: <int>           thread number, default=1.
  type: boolean
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- GapCloser
