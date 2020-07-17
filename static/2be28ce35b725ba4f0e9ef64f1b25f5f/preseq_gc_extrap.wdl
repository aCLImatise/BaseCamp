version 1.0

task PreseqGcExtrap {
  input {
    Boolean? coverage_yield_output
    Boolean? max_width
    Boolean? bin_size
    Boolean? extra_p
    Boolean? step
    Boolean? bootstraps
    Boolean? cval
    Boolean? terms
    Boolean? verbose
    Boolean? bed
    Boolean? quick
    Boolean? defects
    Boolean? seed
    Boolean? about
    String gc_extra_p
    String sorted_mapped_read_file
  }
  command <<<
    preseq gc_extrap \
      ~{gc_extra_p} \
      ~{sorted_mapped_read_file} \
      ~{true="-output" false="" coverage_yield_output} \
      ~{true="-max_width" false="" max_width} \
      ~{true="-bin_size" false="" bin_size} \
      ~{true="-extrap" false="" extra_p} \
      ~{true="-step" false="" step} \
      ~{true="-bootstraps" false="" bootstraps} \
      ~{true="-cval" false="" cval} \
      ~{true="-terms" false="" terms} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-bed" false="" bed} \
      ~{true="-quick" false="" quick} \
      ~{true="-defects" false="" defects} \
      ~{true="-seed" false="" seed} \
      ~{true="-about" false="" about}
  >>>
  parameter_meta {
    coverage_yield_output: "coverage yield output file (default: stdout) "
    max_width: "max fragment length, set equal to read length for single end  reads "
    bin_size: "bin size (default: 10) "
    extra_p: "maximum extrapolation in base pairs(default: 1e+12) "
    step: "step size in bases between extrapolations (default: 1e+08) "
    bootstraps: "number of bootstraps (default: 100), "
    cval: "level for confidence intervals (default: 0.95) "
    terms: "maximum number of terms "
    verbose: "print more information "
    bed: "input is in bed format without sequence information "
    quick: "quick mode: run gc_extrap without bootstrapping for  confidence intervals "
    defects: "defects mode to extrapolate without testing for defects "
    seed: "seed for random number generator "
    about: "print about message "
    gc_extra_p: ""
    sorted_mapped_read_file: ""
  }
}