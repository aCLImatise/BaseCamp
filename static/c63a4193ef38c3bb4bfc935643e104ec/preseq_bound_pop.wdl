version 1.0

task PreseqBoundPop {
  input {
    Boolean? species_richness_stdout
    Boolean? max_num_points
    Boolean? tolerance
    Boolean? bootstraps
    Boolean? c_level
    Boolean? verbose
    Boolean? pe
    Boolean? hist
    Boolean? vals
    Boolean? bam
    Boolean? seg_len
    Boolean? quick
    Boolean? seed
    Boolean? about
    String bound_pop
    String sorted_bed_file
  }
  command <<<
    preseq bound_pop \
      ~{bound_pop} \
      ~{sorted_bed_file} \
      ~{true="-output" false="" species_richness_stdout} \
      ~{true="-max_num_points" false="" max_num_points} \
      ~{true="-tolerance" false="" tolerance} \
      ~{true="-bootstraps" false="" bootstraps} \
      ~{true="-clevel" false="" c_level} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-pe" false="" pe} \
      ~{true="-hist" false="" hist} \
      ~{true="-vals" false="" vals} \
      ~{true="-bam" false="" bam} \
      ~{true="-seg_len" false="" seg_len} \
      ~{true="-quick" false="" quick} \
      ~{true="-seed" false="" seed} \
      ~{true="-about" false="" about}
  >>>
  parameter_meta {
    species_richness_stdout: "species richness output file (default: stdout) "
    max_num_points: "maximum number of points in quadrature estimates  (default: 10) "
    tolerance: "numerical tolerance (default: 1e-20) "
    bootstraps: "number of bootstraps (default: 500) "
    c_level: "level for confidence intervals (default: 0.95) "
    verbose: "print more information "
    pe: "input is paired end read file "
    hist: "input is a text file containing the observed histogram "
    vals: "input is a text file containing only the observed  duplicate counts "
    bam: "input is in BAM format "
    seg_len: "maximum segment length when merging paired end bam reads  (default: 5000) "
    quick: "quick mode, estimate without bootstrapping "
    seed: "seed for random number generator "
    about: "print about message "
    bound_pop: ""
    sorted_bed_file: ""
  }
}