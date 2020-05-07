class: CommandLineTool
id: abruijn_assemble.cwl
inputs:
- id: out_assembly
  doc: path to output file
  type: string
  inputBinding:
    position: 0
- id: coverage
  doc: estimated assembly coverage
  type: string
  inputBinding:
    position: 1
- id: k
  doc: 'k-mer size [default = 15] '
  type: string
  inputBinding:
    prefix: -k
- id: m
  doc: 'minimum k-mer coverage [default = auto] '
  type: long
  inputBinding:
    prefix: -m
- id: x
  doc: 'maximum k-mer coverage [default = auto] '
  type: long
  inputBinding:
    prefix: -x
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
- id: o
  doc: 'store/load overlaps to/from file [default = not set] '
  type: string
  inputBinding:
    prefix: -o
- id: t
  doc: 'number of parallel threads [default = 1] '
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- abruijn-assemble
