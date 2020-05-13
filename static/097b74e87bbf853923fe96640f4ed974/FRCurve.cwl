class: CommandLineTool
id: FRCurve.cwl
inputs:
- id: d
  doc: =<n>      - Genome size (number of bps)
  type: string
  inputBinding:
    prefix: -D
- id: d
  doc: =<n>             - AMOS bank name
  type: string
  inputBinding:
    prefix: -D
- id: column
  doc: 1 = feature threshold T;
  type: boolean
  inputBinding:
    prefix: '- column'
- id: column
  doc: 2 = contigs' N50 associated to the threshold T in column 1;
  type: boolean
  inputBinding:
    prefix: '- column'
- id: column
  doc: 3 = cumulative size of the contigs whose number of features is <= T;
  type: boolean
  inputBinding:
    prefix: '- column'
outputs: []
cwlVersion: v1.1
baseCommand:
- FRCurve
