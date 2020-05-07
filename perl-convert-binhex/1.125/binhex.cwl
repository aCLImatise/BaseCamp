class: CommandLineTool
id: binhex.pl.cwl
inputs:
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: o
  doc: Output in given directory (default outputs in file's directory)
  type: string
  inputBinding:
    prefix: -o
- id: v
  doc: Verbose output (normally just one line per file is shown)
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- binhex.pl
