class: CommandLineTool
id: nmrml2isa.cwl
inputs:
- id: i
  doc: input folder or archive containing nmrML files
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: out folder (a new directory will be created here)
  type: string
  inputBinding:
    prefix: -o
- id: s
  doc: study identifier (e.g. MTBLSxxx)
  type: string
  inputBinding:
    prefix: -s
- id: m
  doc: additional user provided metadata (JSON or XLSX format)
  type: string
  inputBinding:
    prefix: -m
- id: j
  doc: launch different processes for parsing
  type: string
  inputBinding:
    prefix: -j
- id: w
  doc: warning control (with python default behaviour)
  type: string
  inputBinding:
    prefix: -W
- id: t
  doc: directory containing default template files
  type: string
  inputBinding:
    prefix: -t
- id: v
  doc: show more output (default if progressbar2 is not installed)
  type: boolean
  inputBinding:
    prefix: -v
- id: q
  doc: do not show any output
  type: boolean
  inputBinding:
    prefix: -q
outputs: []
cwlVersion: v1.1
baseCommand:
- nmrml2isa
