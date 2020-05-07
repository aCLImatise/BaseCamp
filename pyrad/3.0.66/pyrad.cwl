class: CommandLineTool
id: pyrad.cwl
inputs:
- id: pyra_d
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: p
  doc: input file for within sample filtering and clustering
  type: string
  inputBinding:
    prefix: -p
- id: s
  doc: perform step-wise parts of within analysis 1 = barcode sorting 2 = filter/edit
    raw sequences 3 = within-sample clustering 4 = estimate pi and e 5 = consensus
    calling 6 = cluster consensus 7 = align & create output files
  type: string
  inputBinding:
    prefix: -s
- id: d
  doc: input file for D-test of introgression, can iterate over multiple samples
  type: string
  inputBinding:
    prefix: -d
- id: n
  doc: creates a new empty input params.txt file
  type: boolean
  inputBinding:
    prefix: -n
- id: d
  doc: creates a new empty Dtest input file
  type: boolean
  inputBinding:
    prefix: -D
outputs: []
cwlVersion: v1.1
baseCommand:
- pyrad
