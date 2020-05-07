class: CommandLineTool
id: mssprottable_protfdr.cwl
inputs:
- id: i
  doc: Input file of protein table format
  type: string
  inputBinding:
    prefix: -i
- id: d
  doc: Directory to output in
  type: string
  inputBinding:
    prefix: -d
- id: o
  doc: Output file
  type: string
  inputBinding:
    prefix: -o
- id: decoy_fn
  doc: Decoy input file (percolator out XML) for qvality
  type: string
  inputBinding:
    prefix: --decoyfn
outputs: []
cwlVersion: v1.1
baseCommand:
- mssprottable
- protfdr
