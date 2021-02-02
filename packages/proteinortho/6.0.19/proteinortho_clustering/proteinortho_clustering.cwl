class: CommandLineTool
id: proteinortho_clustering.cwl
inputs:
- id: in_verbose
  doc: report progress
  type: boolean
  inputBinding:
    prefix: -verbose
- id: in_conn
  doc: threshold for connectivity [0.1]
  type: double
  inputBinding:
    prefix: -conn
- id: in_purity
  doc: threshold for purity [1e-07]
  type: double
  inputBinding:
    prefix: -purity
- id: in_max_nodes
  doc: max. number of nodes for alg. clustering [16777216]
  type: long
  inputBinding:
    prefix: -maxnodes
- id: in_min_species
  doc: threshold for species number [1]
  type: double
  inputBinding:
    prefix: -minspecies
- id: in_rm_graph
  doc: output file for graph
  type: File
  inputBinding:
    prefix: -rmgraph
- id: in_seed
  doc: seed value for srand [current unix time]
  type: long
  inputBinding:
    prefix: -seed
- id: in_epsilon
  doc: convergence threshold [1e-08]
  type: double
  inputBinding:
    prefix: -epsilon
- id: in_lapack
  doc: use the lapack package for the computation of the algebraic connectivity [1]
  type: boolean
  inputBinding:
    prefix: -lapack
- id: in_ram
  doc: maximal used ram threshold for LAPACK and the input graph in MB [16384]
  type: long
  inputBinding:
    prefix: -ram
- id: in_weighted
  doc: the spectral partition is calculated using the bitscores [1]
  type: boolean
  inputBinding:
    prefix: -weighted
- id: in_cpus
  doc: the number of threads used for openMP [1]
  type: long
  inputBinding:
    prefix: -cpus
- id: in_min_openmp
  doc: the minimum number of nodes for parallel power iteration [256]
  type: long
  inputBinding:
    prefix: -minOpenmp
- id: in_k_mere
  doc: use the kmere-split heuristic [1]
  type: boolean
  inputBinding:
    prefix: -kmere
- id: in_pow_lapd
  doc: '| -power_d float          the minimum graph density for the power iteration
    method, lapacks (d|s)syevr is used otherwise [linear:d<10^(-5.2)*n]'
  type: boolean
  inputBinding:
    prefix: -powLapD
- id: in_test
  doc: various test-functions are called first [not set]
  type: boolean
  inputBinding:
    prefix: -test
- id: in_max_runs_convergence
  doc: the maximum number of runs for the calculation of the algebraic connectivity
    [8192]
  type: long
  inputBinding:
    prefix: -maxRunsConvergence
- id: in_graph_files_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_rm_graph
  doc: output file for graph
  type: File
  outputBinding:
    glob: $(inputs.in_rm_graph)
cwlVersion: v1.1
baseCommand:
- proteinortho_clustering
