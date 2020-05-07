class: CommandLineTool
id: msspercolator_qvality.cwl
inputs:
- id: i
  doc: Input file of percolator out XML format
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
- id: feat_type
  doc: Feature type to use for qvality. Can either be psm or peptide.
  type: string
  inputBinding:
    prefix: --feattype
- id: q_options
  doc: 'Extra options that may be passed to qvality. Option form: --qoptions ***flag
    value ***flag ***flag value'
  type: string[]
  inputBinding:
    prefix: --qoptions
outputs: []
cwlVersion: v1.1
baseCommand:
- msspercolator
- qvality
