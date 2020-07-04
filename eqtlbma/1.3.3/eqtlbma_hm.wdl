version 1.0

task EqtlbmaHm {
  input {
    String? verbose
    Boolean? data
    String? n_sub_grp
    Boolean? model
    Boolean? dim
    Boolean? n_grid
    Boolean? out
    Boolean? in_it
    Boolean? rand
    Boolean? seed
    Boolean? thresh
    Boolean? max_it
    Boolean? msl
    Boolean? thread
    String? configs
    String? keep_gen
    Boolean? get_ci
    Boolean? get_bf
    Boolean? pi_zero
    Boolean? ci
  }
  command <<<
    eqtlbma_hm \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{true="--data" false="" data} \
      ~{if defined(n_sub_grp) then ("--nsubgrp " +  '"' + n_sub_grp + '"') else ""} \
      ~{true="--model" false="" model} \
      ~{true="--dim" false="" dim} \
      ~{true="--ngrid" false="" n_grid} \
      ~{true="--out" false="" out} \
      ~{true="--init" false="" in_it} \
      ~{true="--rand" false="" rand} \
      ~{true="--seed" false="" seed} \
      ~{true="--thresh" false="" thresh} \
      ~{true="--maxit" false="" max_it} \
      ~{true="--msl" false="" msl} \
      ~{true="--thread" false="" thread} \
      ~{if defined(configs) then ("--configs " +  '"' + configs + '"') else ""} \
      ~{if defined(keep_gen) then ("--keepgen " +  '"' + keep_gen + '"') else ""} \
      ~{true="--getci" false="" get_ci} \
      ~{true="--getbf" false="" get_bf} \
      ~{true="--pi0" false="" pi_zero} \
      ~{true="--ci" false="" ci}
  >>>
  parameter_meta {
    verbose: "level (0/default=1/2/3)"
    data: "input data (usually output files from eqtlbma_bf)"
    n_sub_grp: "of subgroups"
    model: "which model to fit (default=configs/types)"
    dim: "dimension of the model (nb of active configs or types)"
    n_grid: "number of grid points"
    out: "output file (gzipped)"
    in_it: "file for initialization 3 columns: param<tab>value<tab>fixed (TRUE or FALSE)"
    rand: "random initialization"
    seed: "seed used with --rand, otherwise use time"
    thresh: "threshold to stop the EM (default=0.05)"
    max_it: "maximum number of iterations (optional) useful if wall-time limit (see also --init)"
    msl: "maximum step length for SQUAREM default=1 (meaning classical EM), around 3 is a good option"
    thread: "number of threads (default=1)"
    configs: "of configurations to keep (e.g. \"1|3|1-3\")"
    keep_gen: "'general' ABFs (useful for BMAlite)"
    get_ci: "compute the confidence intervals (single thread, thus slow)"
    get_bf: "compute the Bayes Factors using the estimated weights can take some time, otherwise only the estimated weights are reported"
    pi_zero: "fixed value for pi0 (pi0 hence won't be updated in the EM)"
    ci: "file with estimates of hyperparameters to only compute confidence intervals"
  }
}