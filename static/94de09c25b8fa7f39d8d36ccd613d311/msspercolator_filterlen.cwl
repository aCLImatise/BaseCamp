class: CommandLineTool
id: msspercolator_filterlen.cwl
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
- id: maxlen
  doc: Maximum length of peptide to be included in filtered data.
  type: long
  inputBinding:
    prefix: --maxlen
- id: min_len
  doc: Minimum length of peptide to be included
  type: long
  inputBinding:
    prefix: --minlen
outputs: []
cwlVersion: v1.1
baseCommand:
- msspercolator
- filterlen
