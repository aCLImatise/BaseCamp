class: CommandLineTool
id: obgrep.cwl
inputs:
- id: v
  doc: Invert the matching, print non-matching molecules
  type: boolean
  inputBinding:
    prefix: -v
- id: c
  doc: Print the number of matched molecules
  type: boolean
  inputBinding:
    prefix: -c
- id: i
  doc: Specify the input and output format
  type: string
  inputBinding:
    prefix: -i
- id: f
  doc: Full match, print matching-molecules when the number of heavy atoms is equal
    to the number of PATTERN atoms
  type: boolean
  inputBinding:
    prefix: -f
- id: n
  doc: Only print the name of the molecules
  type: boolean
  inputBinding:
    prefix: -n
- id: t
  doc: Print a molecule only if the PATTERN occurs NUM times inside the molecule
  type: string
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- obgrep
