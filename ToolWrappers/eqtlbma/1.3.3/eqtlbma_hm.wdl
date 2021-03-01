version 1.0

task EqtlbmaHm {
  input {
    Int? verbose
    Boolean? data
    Int? n_sub_grp
    Boolean? model
    Boolean? dim
    Boolean? n_grid
    File? out
    Boolean? in_it
    Boolean? rand
    Boolean? seed
    Boolean? thresh
    Boolean? max_it
    Boolean? msl
    Boolean? thread
    Int? configs
    String? keep_gen
    Boolean? get_ci
    Boolean? get_bf
    Boolean? pi_zero
    Boolean? ci
  }
  command <<<
    eqtlbma_hm \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if (data) then "--data" else ""} \
      ~{if defined(n_sub_grp) then ("--nsubgrp " +  '"' + n_sub_grp + '"') else ""} \
      ~{if (model) then "--model" else ""} \
      ~{if (dim) then "--dim" else ""} \
      ~{if (n_grid) then "--ngrid" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (in_it) then "--init" else ""} \
      ~{if (rand) then "--rand" else ""} \
      ~{if (seed) then "--seed" else ""} \
      ~{if (thresh) then "--thresh" else ""} \
      ~{if (max_it) then "--maxit" else ""} \
      ~{if (msl) then "--msl" else ""} \
      ~{if (thread) then "--thread" else ""} \
      ~{if defined(configs) then ("--configs " +  '"' + configs + '"') else ""} \
      ~{if defined(keep_gen) then ("--keepgen " +  '"' + keep_gen + '"') else ""} \
      ~{if (get_ci) then "--getci" else ""} \
      ~{if (get_bf) then "--getbf" else ""} \
      ~{if (pi_zero) then "--pi0" else ""} \
      ~{if (ci) then "--ci" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "level (0/default=1/2/3)"
    data: "input data (usually output files from eqtlbma_bf)"
    n_sub_grp: "of subgroups"
    model: "which model to fit (default=configs/types)"
    dim: "dimension of the model (nb of active configs or types)"
    n_grid: "number of grid points"
    out: "output file (gzipped)"
    in_it: "file for initialization\\n3 columns: param<tab>value<tab>fixed (TRUE or FALSE)"
    rand: "random initialization"
    seed: "seed used with --rand, otherwise use time"
    thresh: "threshold to stop the EM (default=0.05)"
    max_it: "maximum number of iterations (optional)\\nuseful if wall-time limit (see also --init)"
    msl: "maximum step length for SQUAREM\\ndefault=1 (meaning classical EM), around 3 is a good option"
    thread: "number of threads (default=1)"
    configs: "of configurations to keep (e.g. \\\"1|3|1-3\\\")"
    keep_gen: "'general' ABFs (useful for BMAlite)"
    get_ci: "compute the confidence intervals (single thread, thus slow)"
    get_bf: "compute the Bayes Factors using the estimated weights\\ncan take some time, otherwise only the estimated weights are reported"
    pi_zero: "fixed value for pi0 (pi0 hence won't be updated in the EM)"
    ci: "file with estimates of hyperparameters to only compute confidence intervals"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}