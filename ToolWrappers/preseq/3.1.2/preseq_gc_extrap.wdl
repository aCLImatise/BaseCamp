version 1.0

task PreseqGcExtrap {
  input {
    File? coverage_yield_output
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
    Boolean? defects_mode_extrapolate
    Boolean? about
    String seed_seed_random
  }
  command <<<
    preseq gc_extrap \
      ~{seed_seed_random} \
      ~{if (coverage_yield_output) then "-output" else ""} \
      ~{if (max_width) then "-max_width" else ""} \
      ~{if (bin_size) then "-bin_size" else ""} \
      ~{if (extra_p) then "-extrap" else ""} \
      ~{if (step) then "-step" else ""} \
      ~{if (bootstraps) then "-bootstraps" else ""} \
      ~{if (cval) then "-cval" else ""} \
      ~{if (terms) then "-terms" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (bed) then "-bed" else ""} \
      ~{if (quick) then "-quick" else ""} \
      ~{if (defects_mode_extrapolate) then "-defects" else ""} \
      ~{if (about) then "-about" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/preseq:3.1.2--hfb6f838_0"
  }
  parameter_meta {
    coverage_yield_output: "coverage yield output file (default: stdout)"
    max_width: "max fragment length, set equal to read length for\\nsingle end reads [10000]"
    bin_size: "bin size [10]"
    extra_p: "maximum extrapolation in base pairs\\n[1000000000000.000000]"
    step: "step size in bases between extrapolations\\n[100000000.000000]"
    bootstraps: "number of bootstraps [100]"
    cval: "level for confidence intervals [0.950000]"
    terms: "maximum number of terms [100]"
    verbose: "print more information"
    bed: "input is in bed format without sequence information"
    quick: "quick mode: run gc_extrap without bootstrapping for\\nconfidence intervals"
    defects_mode_extrapolate: "defects mode to extrapolate without testing for"
    about: "print about message"
    seed_seed_random: "-r, -seed        seed for random number generator [408] "
  }
  output {
    File out_stdout = stdout()
    File out_coverage_yield_output = "${in_coverage_yield_output}"
  }
}