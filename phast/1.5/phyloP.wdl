version 1.0

task PhyloP {
  input {
    String? confidence_interval
    String? chrom
    String? log
    String? seed
    Boolean? no_prune
    String? null
    Boolean? posterior
    Boolean? fit_model
    String? epsilon
    Boolean? quantiles
    String tree_dot_mod
    String? alignment
  }
  command <<<
    phyloP \
      ~{tree_dot_mod} \
      ~{alignment} \
      ~{if defined(confidence_interval) then ("--confidence-interval " +  '"' + confidence_interval + '"') else ""} \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="--no-prune" false="" no_prune} \
      ~{if defined(null) then ("--null " +  '"' + null + '"') else ""} \
      ~{true="--posterior" false="" posterior} \
      ~{true="--fit-model" false="" fit_model} \
      ~{if defined(epsilon) then ("--epsilon " +  '"' + epsilon + '"') else ""} \
      ~{true="--quantiles" false="" quantiles}
  >>>
  parameter_meta {
    confidence_interval: "Allow for uncertainty in the estimate of the actual number of substitutions by using a (central) confidence interval about the mean of the specified size (0 < val < 1).  To be conservative, the maximum of this interval is used when computing a p-value of conservation, and the minimum is used when computing a p-value of acceleration.  The variance of the posterior is computed exactly, but the confidence interval is based on the assumption that the combined distribution will be approximately normal (true for large numbers of sites by central limit theorem)."
    chrom: "(Optionally use with --wig-scores or --base-by-base) Chromosome name for wig output.  Default is root of multiple alignment filename."
    log: "Write log to <fname> describing details of parameter optimization. Useful for debugging.  (Warning: may produce large file.)"
    seed: "Provide a random number seed, should be an integer >=1.  Random numbers are used in some cases to generate starting values for optimization.  If not specified will use a seed based on the current time."
    no_prune: "Do not prune species from tree which are not in alignment.  Rather, treat these species as having missing data in the alignment.  Missing data does have an effect on the results when --method SPH is used."
    null: "Compute just the null (prior) distribution of the number of substitutions, as defined by the tree model and the given number of sites, and output as a table.  The 'alignment' argument will be ignored.  If used with --subtree, the joint distribution over the number of substitutions in the specified supertree and subtree will be output instead."
    posterior: "Compute just the posterior distribution of the number of substitutions, given the alignment and the model, and output as a table.  If used with --subtree, the joint distribution over the number of substitutions in the specified supertree and subtree will be output instead."
    fit_model: "Fit model to data before computing posterior distribution, by estimating a scale factor for the whole tree or (if --subtree) separate scale factors for the specified subtree and supertree. Makes p-values less conservative.  This option has no effect with --null and currently cannot be used with --features.  It can be used with --wig-scores and --base-by-base."
    epsilon: "(Default 1e-10 or 1e-6 if --wig-scores or --base-by-base) Threshold used in truncating tails of distributions; tail probabilities less than this value are discarded.  To get accurate p-values smaller than 1e-10, this option will need to be used, at some cost in speed.  Note that truncation affects only *right* tails, not left tails, so it should be an issue only with p-values of acceleration."
    quantiles: "(For use with --null or --posterior) Report quantiles of distribution rather than whole distribution."
    tree_dot_mod: ""
    alignment: ""
  }
}