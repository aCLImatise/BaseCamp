class: CommandLineTool
id: mglex_cli_evaluate.cwl
inputs:
- id: in_data
  doc: Likelihood matrix; default standard input
  type: File
  inputBinding:
    prefix: --data
- id: in_responsibility
  doc: Responsibility (weight) matrix file
  type: File
  inputBinding:
    prefix: --responsibility
- id: in_weight
  doc: Weights (sequence length) file
  type: File
  inputBinding:
    prefix: --weight
- id: in_method
  doc: "Evaluation method; one of \"mse\", \"mse-flex\",\n\"co-clustering\", \"separation\""
  type: string
  inputBinding:
    prefix: --method
- id: in_subsample
  doc: Subsample this number of data points for faster calculation
  type: long
  inputBinding:
    prefix: --subsample
- id: in_random_seed
  doc: Seed for random operations
  type: long
  inputBinding:
    prefix: --random-seed
- id: in_fromtostep__beta
  doc: <from(:to:step)>, --beta <from(:to:step)>  Beta correction factor(s) to evaluate;
    default 1.0
  type: boolean
  inputBinding:
    prefix: -b
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: in_cluster_dot
  doc: 'Method "separation":'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mglex-cli
- evaluate
