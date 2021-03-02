class: CommandLineTool
id: cooler_balance.cwl
inputs:
- id: in_nproc
  doc: Number of processes to split the work
  type: long?
  inputBinding:
    prefix: --nproc
- id: in_chunksize
  doc: "Control the number of pixels handled by each\nworker process at a time.  [default:\n\
    10000000]"
  type: long?
  inputBinding:
    prefix: --chunksize
- id: in_mad_max
  doc: "Ignore bins from the contact matrix using\nthe 'MAD-max' filter: bins whose\
    \ log\nmarginal sum is less than ``mad-max`` median\nabsolute deviations below\
    \ the median log\nmarginal sum of all the bins in the same\nchromosome.  [default:\
    \ 5]"
  type: long?
  inputBinding:
    prefix: --mad-max
- id: in_min_nnz
  doc: "Ignore bins from the contact matrix whose\nmarginal number of nonzeros is\
    \ less than\nthis number.  [default: 10]"
  type: long?
  inputBinding:
    prefix: --min-nnz
- id: in_min_count
  doc: "Ignore bins from the contact matrix whose\nmarginal count is less than this\
    \ number.\n[default: 0]"
  type: long?
  inputBinding:
    prefix: --min-count
- id: in_blacklist
  doc: "Path to a 3-column BED file containing\ngenomic regions to mask out during\
    \ the\nbalancing procedure, e.g. sequence gaps or\nregions of poor mappability."
  type: File?
  inputBinding:
    prefix: --blacklist
- id: in_ignore_diags
  doc: "Number of diagonals of the contact matrix to\nignore, including the main diagonal.\n\
    Examples: 0 ignores nothing, 1 ignores the\nmain diagonal, 2 ignores diagonals\
    \ (-1, 0,\n1), etc.  [default: 2]"
  type: long?
  inputBinding:
    prefix: --ignore-diags
- id: in_ignore_dist
  doc: Distance in bp to ignore.
  type: long?
  inputBinding:
    prefix: --ignore-dist
- id: in_to_l
  doc: "Threshold value of variance of the marginals\nfor the algorithm to converge.\
    \  [default:\n1e-05]"
  type: double?
  inputBinding:
    prefix: --tol
- id: in_max_iters
  doc: "Maximum number of iterations to perform if\nconvergence is not achieved. \
    \ [default: 200]"
  type: long?
  inputBinding:
    prefix: --max-iters
- id: in_cis_only
  doc: "Calculate weights against intra-chromosomal\ndata only instead of genome-wide."
  type: boolean?
  inputBinding:
    prefix: --cis-only
- id: in_trans_only
  doc: "Calculate weights against inter-chromosomal\ndata only instead of genome-wide."
  type: boolean?
  inputBinding:
    prefix: --trans-only
- id: in_name
  doc: "Name of column to write to.  [default:\nweight]"
  type: string?
  inputBinding:
    prefix: --name
- id: in_force
  doc: "Overwrite the target dataset, 'weight', if\nit already exists."
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_check
  doc: Check whether a data column 'weight' already
  type: boolean?
  inputBinding:
    prefix: --check
- id: in_convergence_policy
  doc: "[store_final|store_nan|discard|error]\nWhat to do with weights when balancing\n\
    doesn't converge in max_iters.\n'store_final': Store the final result,\nregardless\
    \ of whether the iterations\nconverge to the specified tolerance;\n'store_nan':\
    \ Store a vector of NaN values to\nindicate that the matrix failed to converge;\n\
    'discard': Store nothing and exit\ngracefully; 'error': Abort with non-zero\n\
    exit status.  [default: store_final]"
  type: boolean?
  inputBinding:
    prefix: --convergence-policy
- id: in_exists_dot
  doc: --stdout                        Print weight column to stdout instead of
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_blacklist
  doc: "Path to a 3-column BED file containing\ngenomic regions to mask out during\
    \ the\nbalancing procedure, e.g. sequence gaps or\nregions of poor mappability."
  type: File?
  outputBinding:
    glob: $(inputs.in_blacklist)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cooler:0.8.10--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- cooler
- balance
