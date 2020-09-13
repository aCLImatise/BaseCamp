version 1.0

task PreseqLcExtrap {
  input {
    File? yield_output_file
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
    File sorted_bed_file
  }
  command <<<
    preseq lc_extrap \
      ~{lc_extra_p} \
      ~{sorted_bed_file} \
      ~{if (yield_output_file) then "-output" else ""} \
      ~{if (extra_p) then "-extrap" else ""} \
      ~{if (step) then "-step" else ""} \
      ~{if (bootstraps) then "-bootstraps" else ""} \
      ~{if (cval) then "-cval" else ""} \
      ~{if (terms) then "-terms" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (bam) then "-bam" else ""} \
      ~{if (seg_len) then "-seg_len" else ""} \
      ~{if (pe) then "-pe" else ""} \
      ~{if (vals) then "-vals" else ""} \
      ~{if (hist) then "-hist" else ""} \
      ~{if (quick) then "-quick" else ""} \
      ~{if (defects) then "-defects" else ""} \
      ~{if (seed) then "-seed" else ""} \
      ~{if (about) then "-about" else ""}
  >>>
  parameter_meta {
    yield_output_file: "yield output file (default: stdout)"
    extra_p: "maximum extrapolation (default: 1e+10)"
    step: "step size in extrapolations (default: 1e+06)"
    bootstraps: "number of bootstraps (default: 100),"
    cval: "level for confidence intervals (default: 0.95)"
    terms: "maximum number of terms"
    verbose: "print more information"
    bam: "input is in BAM format"
    seg_len: "maximum segment length when merging paired end bam reads\\n(default: 5000)"
    pe: "input is paired end read file"
    vals: "input is a text file containing only the observed counts"
    hist: "input is a text file containing the observed histogram"
    quick: "quick mode, estimate yield without bootstrapping for\\nconfidence intervals"
    defects: "defects mode to extrapolate without testing for defects"
    seed: "seed for random number generator"
    about: "print about message"
    lc_extra_p: ""
    sorted_bed_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_yield_output_file = "${in_yield_output_file}"
  }
}