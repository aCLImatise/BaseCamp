version 1.0

task PreseqCCurve {
  input {
    Boolean? yield_output_file
    Boolean? step
    Boolean? verbose
    Boolean? pe
    Boolean? hist
    Boolean? vals
    Boolean? bam
    Boolean? seg_len
    Boolean? seed
    Boolean? about
    String c_curve
    String sorted_bed_file
  }
  command <<<
    preseq c_curve \
      ~{c_curve} \
      ~{sorted_bed_file} \
      ~{true="-output" false="" yield_output_file} \
      ~{true="-step" false="" step} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-pe" false="" pe} \
      ~{true="-hist" false="" hist} \
      ~{true="-vals" false="" vals} \
      ~{true="-bam" false="" bam} \
      ~{true="-seg_len" false="" seg_len} \
      ~{true="-seed" false="" seed} \
      ~{true="-about" false="" about}
  >>>
  parameter_meta {
    yield_output_file: "yield output file (default: stdout) "
    step: "step size in extrapolations (default: 1e+06) "
    verbose: "print more information "
    pe: "input is paired end read file "
    hist: "input is a text file containing the observed histogram "
    vals: "input is a text file containing only the observed counts "
    bam: "input is in BAM format "
    seg_len: "maximum segment length when merging paired end bam reads  (default: 5000) "
    seed: "seed for random number generator "
    about: "print about message "
    c_curve: ""
    sorted_bed_file: ""
  }
}