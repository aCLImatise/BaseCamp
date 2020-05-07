class: CommandLineTool
id: cmfetch.cwl
inputs:
- id: f
  doc: ': second cmdline arg is a file of names to retrieve'
  type: boolean
  inputBinding:
    prefix: -f
- id: o
  doc: ': output CM to file <f> instead of stdout'
  type: string
  inputBinding:
    prefix: -o
- id: o
  doc: ': output CM to file named <key>'
  type: boolean
  inputBinding:
    prefix: -O
- id: index
  doc: ': index the <cmfile>, creating <cmfile>.ssi'
  type: boolean
  inputBinding:
    prefix: --index
outputs: []
cwlVersion: v1.1
baseCommand:
- cmfetch
