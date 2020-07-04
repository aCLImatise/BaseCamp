class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pyrad.cwl
inputs:
- id: input_file_sample
  doc: input file for within sample filtering and clustering
  type: string
  inputBinding:
    prefix: -p
- id: perform_stepwise_parts
  doc: perform step-wise parts of within analysis 1 = barcode sorting 2 = filter/edit
    raw sequences 3 = within-sample clustering 4 = estimate pi and e 5 = consensus
    calling 6 = cluster consensus 7 = align & create output files
  type: string
  inputBinding:
    prefix: -s
- id: input_file_dtest
  doc: input file for D-test of introgression, can iterate over multiple samples
  type: string
  inputBinding:
    prefix: -d
- id: creates_new_empty_input_file
  doc: creates a new empty input params.txt file
  type: boolean
  inputBinding:
    prefix: -n
- id: creates_new_empty_dtest_file
  doc: creates a new empty Dtest input file
  type: boolean
  inputBinding:
    prefix: -D
outputs: []
cwlVersion: v1.1
baseCommand:
- pyrad
