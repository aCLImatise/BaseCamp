class: CommandLineTool
id: decifer.cwl
inputs:
- id: in_purity_file
  doc: "File with purity of each sample (TSV file in two\ncolumns`SAMPLE PURITY`)"
  type: File?
  inputBinding:
    prefix: --purityfile
- id: in_beta_binomial
  doc: "File with precisions for betabinomial fit (default:\nbinomial likelihood)"
  type: File?
  inputBinding:
    prefix: --betabinomial
- id: in_ccf
  doc: 'Run with CCF instead of DCF (default: False)'
  type: boolean?
  inputBinding:
    prefix: --ccf
- id: in_mink
  doc: "Minimum number of clusters, which must be at least 2\n(default: 2)"
  type: long?
  inputBinding:
    prefix: --mink
- id: in_max_k
  doc: 'Maximum number of clusters (default: 12)'
  type: long?
  inputBinding:
    prefix: --maxk
- id: in_restarts
  doc: 'Number of restarts (default: 100)'
  type: long?
  inputBinding:
    prefix: --restarts
- id: in_max_it
  doc: "Maximum number of iterations per restart (default:\n200)"
  type: long?
  inputBinding:
    prefix: --maxit
- id: in_elbow
  doc: "Elbow sensitivity, lower values increase sensitivity\n(default: 0.06)"
  type: double?
  inputBinding:
    prefix: --elbow
- id: in_binary_search
  doc: "Use binary-search model selection (default: False,\niterative is used; use\
    \ binary search when considering\nlarge numbers of clusters"
  type: boolean?
  inputBinding:
    prefix: --binarysearch
- id: in_record
  doc: 'Record objectives (default: False'
  type: boolean?
  inputBinding:
    prefix: --record
- id: in_jobs
  doc: "Number of parallele jobs to use (default: equal to\nnumber of available processors)"
  type: long?
  inputBinding:
    prefix: --jobs
- id: in_output
  doc: 'Output prefix (default: ./decifer)'
  type: string?
  inputBinding:
    prefix: --output
- id: in_state_trees
  doc: "Filename of state-trees file (default: use\nstate_trees.txt in the package)"
  type: File?
  inputBinding:
    prefix: --statetrees
- id: in_seed
  doc: 'Random-generator seed (default: None)'
  type: string?
  inputBinding:
    prefix: --seed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/decifer:1.0.0--py27h36946f9_0
cwlVersion: v1.1
baseCommand:
- decifer
