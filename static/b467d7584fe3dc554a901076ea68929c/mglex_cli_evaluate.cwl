class: CommandLineTool
id: mglex_cli_evaluate.cwl
inputs:
- id: evaluate
  doc: (--help | --version)
  type: string
  inputBinding:
    position: 0
- id: evaluate
  doc: (--responsibility <file>) (--method <method>) (--weight <file>) [--data <file>]
    [--subsample <int>] [--random-seed <int>] [--beta <from(:to:step)>]...
  type: string
  inputBinding:
    position: 1
- id: data
  doc: Likelihood matrix; default standard input
  type: File
  inputBinding:
    prefix: --data
- id: responsibility
  doc: Responsibility (weight) matrix file
  type: File
  inputBinding:
    prefix: --responsibility
- id: weight
  doc: Weights (sequence length) file
  type: File
  inputBinding:
    prefix: --weight
- id: method
  doc: Evaluation method; one of "mse", "mse-flex", "co-clustering", "separation"
  type: string
  inputBinding:
    prefix: --method
- id: subsample
  doc: Subsample this number of data points for faster calculation
  type: long
  inputBinding:
    prefix: --subsample
- id: random_seed
  doc: Seed for random operations
  type: long
  inputBinding:
    prefix: --random-seed
- id: b
  doc: <from(:to:step)>, --beta <from(:to:step)>  Beta correction factor(s) to evaluate;
    default 1.0
  type: boolean
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- mglex-cli
- evaluate
