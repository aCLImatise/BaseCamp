version 1.0

task PreseqGcExtrap {
  input {
    File? coverage_yield_output
    Boolean? max_width
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
    String reads
  }
  command <<<
    preseq gc_extrap \
      ~{reads} \
      ~{if (coverage_yield_output) then "-output" else ""} \
      ~{if (max_width) then "-max_width" else ""} \
      ~{if (extra_p) then "-extrap" else ""} \
      ~{if (step) then "-step" else ""} \
      ~{if (bootstraps) then "-bootstraps" else ""} \
      ~{if (cval) then "-cval" else ""} \
      ~{if (terms) then "-terms" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (bed) then "-bed" else ""} \
      ~{if (quick) then "-quick" else ""} \
      ~{if (defects) then "-defects" else ""} \
      ~{if (seed) then "-seed" else ""} \
      ~{if (about) then "-about" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    coverage_yield_output: "coverage yield output file (default: stdout)"
    max_width: "max fragment length, set equal to read length for single end"
    extra_p: "maximum extrapolation in base pairs(default: 1e+12)"
    step: "step size in bases between extrapolations (default: 1e+08)"
    bootstraps: "number of bootstraps (default: 100),"
    cval: "level for confidence intervals (default: 0.95)"
    terms: "maximum number of terms"
    verbose: "print more information"
    bed: "input is in bed format without sequence information"
    quick: "quick mode: run gc_extrap without bootstrapping for\\nconfidence intervals"
    defects: "defects mode to extrapolate without testing for defects"
    seed: "seed for random number generator"
    about: "print about message"
    reads: "-b, -bin_size    bin size (default: 10) "
  }
  output {
    File out_stdout = stdout()
    File out_coverage_yield_output = "${in_coverage_yield_output}"
  }
}