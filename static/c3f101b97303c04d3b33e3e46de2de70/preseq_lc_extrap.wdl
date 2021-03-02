version 1.0

task PreseqLcExtrap {
  input {
    File? yield_default_stdout
    Boolean? extra_p
    Boolean? step
    Boolean? boots
    Boolean? cval
    Boolean? terms
    Boolean? verbose
    Boolean? bam
    Boolean? seg_len
    Boolean? pe
    Boolean? vals
    Boolean? quick
    Boolean? defects
    Boolean? seed
    Boolean? about
    String counts
  }
  command <<<
    preseq lc_extrap \
      ~{counts} \
      ~{if (yield_default_stdout) then "-output" else ""} \
      ~{if (extra_p) then "-extrap" else ""} \
      ~{if (step) then "-step" else ""} \
      ~{if (boots) then "-boots" else ""} \
      ~{if (cval) then "-cval" else ""} \
      ~{if (terms) then "-terms" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (bam) then "-bam" else ""} \
      ~{if (seg_len) then "-seg_len" else ""} \
      ~{if (pe) then "-pe" else ""} \
      ~{if (vals) then "-vals" else ""} \
      ~{if (quick) then "-quick" else ""} \
      ~{if (defects) then "-defects" else ""} \
      ~{if (seed) then "-seed" else ""} \
      ~{if (about) then "-about" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/preseq:3.1.2--hfb6f838_0"
  }
  parameter_meta {
    yield_default_stdout: "yield output file (default: stdout)"
    extra_p: "maximum extrapolation [10000000000.000000]"
    step: "extrapolation step size [1000000.000000]"
    boots: "number of bootstraps [100]"
    cval: "level for confidence intervals [0.950000]"
    terms: "maximum terms in estimator [100]"
    verbose: "print more info"
    bam: "input is in BAM format"
    seg_len: "maximum segment length when merging paired end bam\\nreads [5000]"
    pe: "input is paired end read file"
    vals: "input is a text file containing only the observed"
    quick: "quick mode (no bootstraps) for confidence intervals"
    defects: "no testing for defects"
    seed: "seed for random number generator [408]"
    about: "print about message"
    counts: "-H, -hist     input is a text file containing the observed histogram  "
  }
  output {
    File out_stdout = stdout()
    File out_yield_default_stdout = "${in_yield_default_stdout}"
  }
}