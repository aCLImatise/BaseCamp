class: CommandLineTool
id: pyclone_vi_fit.cwl
inputs:
- id: in_in_file
  doc: "Path to TSV format file with copy number and\nallele count information for\
    \ all samples.See\nthe examples directory in the GitHub\nrepository for format.\
    \  [required]"
  type: File?
  inputBinding:
    prefix: --in-file
- id: in_out_file
  doc: "Path to where results will be written in\nHDF5 format.  [required]"
  type: File?
  inputBinding:
    prefix: --out-file
- id: in_num_annealing_steps
  doc: "Number of simulated annealing steps to\nuse.Default is one step i.e. not to\
    \ use\nsimulated annealing."
  type: long?
  inputBinding:
    prefix: --num-annealing-steps
- id: in_num_clusters
  doc: "Number of clusters to use in variational\napproximation distribution.Note\
    \ that not all\nclusters may not be assigned data points, so\nthe final number\
    \ of clusters could be\nlower.Default is 10."
  type: long?
  inputBinding:
    prefix: --num-clusters
- id: in_density
  doc: "[beta-binomial|binomial]\nAllele count density in the PyClone\nmodel.Use beta-binomial\
    \ for high coverage\nsequencing.Default binomial."
  type: boolean?
  inputBinding:
    prefix: --density
- id: in_num_grid_points
  doc: "Number of points used to approximate CCF\nvalues.Default is 100."
  type: long?
  inputBinding:
    prefix: --num-grid-points
- id: in_num_restarts
  doc: "Number random restarts of Variational\ninference.Default is 1."
  type: long?
  inputBinding:
    prefix: --num-restarts
- id: in_annealing_power
  doc: "Exponent of entries in the annealing\nladder.Default is 1.0."
  type: double?
  inputBinding:
    prefix: --annealing-power
- id: in_convergence_threshold
  doc: "Maximum relative ELBO difference between\niterations to decide on convergence.Default\n\
    is 10^-6."
  type: double?
  inputBinding:
    prefix: --convergence-threshold
- id: in_max_iters
  doc: "Maximum number of ELBO optimization\niterations.Default is 10,0000."
  type: long?
  inputBinding:
    prefix: --max-iters
- id: in_mix_weight_prior
  doc: "Parameter value of symmetric Dirichlet prior\ndistribution on mixture weights.Higher\n\
    values will produce more clusters.Default is\n1.0 which is the uniform prior."
  type: double?
  inputBinding:
    prefix: --mix-weight-prior
- id: in_precision
  doc: "Precision for Beta-Binomial density.Has no\neffect when using Binomial.Default\
    \ is 200."
  type: double?
  inputBinding:
    prefix: --precision
- id: in_print_freq
  doc: "How often to print information about\noptimization.Default is every 100 iteration."
  type: long?
  inputBinding:
    prefix: --print-freq
- id: in_seed
  doc: "Set random seed so results can be\nreproduced. By default a random seed is\n\
    chosen."
  type: long?
  inputBinding:
    prefix: --seed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_file
  doc: "Path to where results will be written in\nHDF5 format.  [required]"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pyclone-vi:0.1.1--pyh7b7c402_0
cwlVersion: v1.1
baseCommand:
- pyclone-vi
- fit
