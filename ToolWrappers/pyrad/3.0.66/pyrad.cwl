class: CommandLineTool
id: pyrad.cwl
inputs:
- id: in_input_file_sample
  doc: input file for within sample filtering and clustering
  type: File
  inputBinding:
    prefix: -p
- id: in_perform_stepwise_parts
  doc: "perform step-wise parts of within analysis\n1 = barcode sorting\n2 = filter/edit\
    \ raw sequences\n3 = within-sample clustering\n4 = estimate pi and e\n5 = consensus\
    \ calling\n6 = cluster consensus\n7 = align & create output files"
  type: long
  inputBinding:
    prefix: -s
- id: in_input_file_dtest
  doc: "input file for D-test of introgression,\ncan iterate over multiple samples"
  type: File
  inputBinding:
    prefix: -d
- id: in_creates_new_input_file
  doc: creates a new empty input params.txt file
  type: boolean
  inputBinding:
    prefix: -n
- id: in_creates_new_empty_file
  doc: creates a new empty Dtest input file
  type: boolean
  inputBinding:
    prefix: -D
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pyrad
