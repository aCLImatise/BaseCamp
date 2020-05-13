class: CommandLineTool
id: kaiju_mergeOutputs.cwl
inputs:
- id: i
  doc: Name of first input file
  type: File
  inputBinding:
    prefix: -i
- id: j
  doc: Name of second input file
  type: File
  inputBinding:
    prefix: -j
- id: o
  doc: Name of output file.
  type: File
  inputBinding:
    prefix: -o
- id: c
  doc: 'Conflict resolution mode, must be 1, 2,  lca, or lowest (default: lca)'
  type: string
  inputBinding:
    prefix: -c
- id: t
  doc: Name of nodes.dmp file, only required when -c is set to lca
  type: File
  inputBinding:
    prefix: -t
- id: s
  doc: Use 4th column with classification score to give precedence to taxon with better
    score.
  type: boolean
  inputBinding:
    prefix: -s
- id: v
  doc: Enable verbose output, which will print a summary in the end.
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: Enable debug output.
  type: boolean
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- kaiju-mergeOutputs
