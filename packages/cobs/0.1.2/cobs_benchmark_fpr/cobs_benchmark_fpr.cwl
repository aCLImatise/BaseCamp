class: CommandLineTool
id: cobs_benchmark_fpr.cwl
inputs:
- id: in_dist
  doc: calculate false positive distribution
  type: boolean?
  inputBinding:
    prefix: --dist
- id: in_num_km_ers
  doc: 'number of kmers of each query, default: 1000'
  type: boolean?
  inputBinding:
    prefix: --num-kmers
- id: in_queries
  doc: 'number of random queries to run, default: 10000'
  type: boolean?
  inputBinding:
    prefix: --queries
- id: in_seed
  doc: random seed
  type: boolean?
  inputBinding:
    prefix: --seed
- id: in_warm_up
  doc: 'number of random warmup queries to run, default: 100'
  type: boolean?
  inputBinding:
    prefix: --warmup
- id: in_in_file
  doc: path to the input file
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cobs:0.1.2--py39h56fc30b_0
cwlVersion: v1.1
baseCommand:
- cobs
- benchmark-fpr
