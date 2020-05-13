class: CommandLineTool
id: abruijn_repeat.cwl
inputs:
- id: out_assembly
  doc: path to output assembly
  type: string
  inputBinding:
    position: 0
- id: k
  doc: 'k-mer size [default = 15] '
  type: string
  inputBinding:
    prefix: -k
- id: v
  doc: 'minimum overlap between reads [default = 5000] '
  type: long
  inputBinding:
    prefix: -v
- id: d
  doc: 'enable debug output [default = false] '
  type: boolean
  inputBinding:
    prefix: -d
- id: l
  doc: 'output log to file [default = not set] '
  type: string
  inputBinding:
    prefix: -l
- id: t
  doc: 'number of parallel threads [default = 1] '
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- abruijn-repeat
