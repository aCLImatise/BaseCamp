class: CommandLineTool
id: msspercolator_reassign.cwl
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
- id: qv_ality
  doc: Qvality output file to fetch q-values and PEP from
  type: string
  inputBinding:
    prefix: --qvality
- id: feat_type
  doc: Feature type to use for qvality. Can either be psm or peptide.
  type: string
  inputBinding:
    prefix: --feattype
outputs: []
cwlVersion: v1.1
baseCommand:
- msspercolator
- reassign
