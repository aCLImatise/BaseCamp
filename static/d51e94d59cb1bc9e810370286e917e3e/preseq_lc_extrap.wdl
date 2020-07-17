version 1.0

task PreseqLcExtrap {
  input {
    Boolean? yield_output_file
    Boolean? extra_p
    Boolean? step
    Boolean? bootstraps
    Boolean? cval
    Boolean? terms
    Boolean? verbose
    Boolean? bam
    Boolean? seg_len
    Boolean? pe
    Boolean? vals
    Boolean? hist
    Boolean? quick
    Boolean? defects
    Boolean? seed
    Boolean? about
    String lc_extra_p
    String sorted_bed_file
  }
  command <<<
    preseq lc_extrap \
      ~{lc_extra_p} \
      ~{sorted_bed_file} \
      ~{true="-output" false="" yield_output_file} \
      ~{true="-extrap" false="" extra_p} \
      ~{true="-step" false="" step} \
      ~{true="-bootstraps" false="" bootstraps} \
      ~{true="-cval" false="" cval} \
      ~{true="-terms" false="" terms} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-bam" false="" bam} \
      ~{true="-seg_len" false="" seg_len} \
      ~{true="-pe" false="" pe} \
      ~{true="-vals" false="" vals} \
      ~{true="-hist" false="" hist} \
      ~{true="-quick" false="" quick} \
      ~{true="-defects" false="" defects} \
      ~{true="-seed" false="" seed} \
      ~{true="-about" false="" about}
  >>>
  parameter_meta {
    yield_output_file: "yield output file (default: stdout) "
    extra_p: "maximum extrapolation (default: 1e+10) "
    step: "step size in extrapolations (default: 1e+06) "
    bootstraps: "number of bootstraps (default: 100), "
    cval: "level for confidence intervals (default: 0.95) "
    terms: "maximum number of terms "
    verbose: "print more information "
    bam: "input is in BAM format "
    seg_len: "maximum segment length when merging paired end bam reads  (default: 5000) "
    pe: "input is paired end read file "
    vals: "input is a text file containing only the observed counts "
    hist: "input is a text file containing the observed histogram "
    quick: "quick mode, estimate yield without bootstrapping for  confidence intervals "
    defects: "defects mode to extrapolate without testing for defects "
    seed: "seed for random number generator "
    about: "print about message "
    lc_extra_p: ""
    sorted_bed_file: ""
  }
}