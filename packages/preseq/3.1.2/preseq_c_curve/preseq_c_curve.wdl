version 1.0

task PreseqCCurve {
  input {
    File? yield_default_stdout
    Boolean? step
    Boolean? verbose
    Boolean? pe
    Boolean? hist
    Boolean? vals
    Boolean? seg_len
    Boolean? seed
    Boolean? about
    String counts
  }
  command <<<
    preseq c_curve \
      ~{counts} \
      ~{if (yield_default_stdout) then "-output" else ""} \
      ~{if (step) then "-step" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (pe) then "-pe" else ""} \
      ~{if (hist) then "-hist" else ""} \
      ~{if (vals) then "-vals" else ""} \
      ~{if (seg_len) then "-seg_len" else ""} \
      ~{if (seed) then "-seed" else ""} \
      ~{if (about) then "-about" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/preseq:3.1.2--hfb6f838_0"
  }
  parameter_meta {
    yield_default_stdout: "yield output file (default: stdout)"
    step: "step size in extrapolations [1000000.000000]"
    verbose: "print more information"
    pe: "input is paired end read file"
    hist: "input is a text file containing the observed histogram"
    vals: "input is a text file containing only the observed"
    seg_len: "maximum segment length when merging paired end bam\\nreads [5000]"
    seed: "seed for random number generator [408]"
    about: "print about message"
    counts: "-B, -bam      input is in BAM format  "
  }
  output {
    File out_stdout = stdout()
    File out_yield_default_stdout = "${in_yield_default_stdout}"
  }
}