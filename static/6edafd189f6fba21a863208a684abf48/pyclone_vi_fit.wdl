version 1.0

task PycloneviFit {
  input {
    File? in_file
    File? out_file
    Int? num_annealing_steps
    Int? num_clusters
    Boolean? density
    Int? num_grid_points
    Int? num_restarts
    Float? annealing_power
    Float? convergence_threshold
    Int? max_iters
    Float? mix_weight_prior
    Float? precision
    Int? print_freq
    Int? seed
  }
  command <<<
    pyclone_vi fit \
      ~{if defined(in_file) then ("--in-file " +  '"' + in_file + '"') else ""} \
      ~{if defined(out_file) then ("--out-file " +  '"' + out_file + '"') else ""} \
      ~{if defined(num_annealing_steps) then ("--num-annealing-steps " +  '"' + num_annealing_steps + '"') else ""} \
      ~{if defined(num_clusters) then ("--num-clusters " +  '"' + num_clusters + '"') else ""} \
      ~{if (density) then "--density" else ""} \
      ~{if defined(num_grid_points) then ("--num-grid-points " +  '"' + num_grid_points + '"') else ""} \
      ~{if defined(num_restarts) then ("--num-restarts " +  '"' + num_restarts + '"') else ""} \
      ~{if defined(annealing_power) then ("--annealing-power " +  '"' + annealing_power + '"') else ""} \
      ~{if defined(convergence_threshold) then ("--convergence-threshold " +  '"' + convergence_threshold + '"') else ""} \
      ~{if defined(max_iters) then ("--max-iters " +  '"' + max_iters + '"') else ""} \
      ~{if defined(mix_weight_prior) then ("--mix-weight-prior " +  '"' + mix_weight_prior + '"') else ""} \
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""} \
      ~{if defined(print_freq) then ("--print-freq " +  '"' + print_freq + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pyclone-vi:0.1.1--pyh7b7c402_0"
  }
  parameter_meta {
    in_file: "Path to TSV format file with copy number and\\nallele count information for all samples.See\\nthe examples directory in the GitHub\\nrepository for format.  [required]"
    out_file: "Path to where results will be written in\\nHDF5 format.  [required]"
    num_annealing_steps: "Number of simulated annealing steps to\\nuse.Default is one step i.e. not to use\\nsimulated annealing."
    num_clusters: "Number of clusters to use in variational\\napproximation distribution.Note that not all\\nclusters may not be assigned data points, so\\nthe final number of clusters could be\\nlower.Default is 10."
    density: "[beta-binomial|binomial]\\nAllele count density in the PyClone\\nmodel.Use beta-binomial for high coverage\\nsequencing.Default binomial."
    num_grid_points: "Number of points used to approximate CCF\\nvalues.Default is 100."
    num_restarts: "Number random restarts of Variational\\ninference.Default is 1."
    annealing_power: "Exponent of entries in the annealing\\nladder.Default is 1.0."
    convergence_threshold: "Maximum relative ELBO difference between\\niterations to decide on convergence.Default\\nis 10^-6."
    max_iters: "Maximum number of ELBO optimization\\niterations.Default is 10,0000."
    mix_weight_prior: "Parameter value of symmetric Dirichlet prior\\ndistribution on mixture weights.Higher\\nvalues will produce more clusters.Default is\\n1.0 which is the uniform prior."
    precision: "Precision for Beta-Binomial density.Has no\\neffect when using Binomial.Default is 200."
    print_freq: "How often to print information about\\noptimization.Default is every 100 iteration."
    seed: "Set random seed so results can be\\nreproduced. By default a random seed is\\nchosen."
  }
  output {
    File out_stdout = stdout()
    File out_out_file = "${in_out_file}"
  }
}