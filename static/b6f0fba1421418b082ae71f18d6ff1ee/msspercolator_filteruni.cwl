class: CommandLineTool
id: msspercolator_filteruni.cwl
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
- id: score
  doc: Score to filter unique peptides on, e.g. svm
  type: string
  inputBinding:
    prefix: --score
outputs: []
cwlVersion: v1.1
baseCommand:
- msspercolator
- filteruni
