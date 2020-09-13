version 1.0

task PreseqCCurve {
  input {
    File? yield_output_file
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
    File sorted_bed_file
  }
  command <<<
    preseq c_curve \
      ~{c_curve} \
      ~{sorted_bed_file} \
      ~{if (yield_output_file) then "-output" else ""} \
      ~{if (step) then "-step" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (pe) then "-pe" else ""} \
      ~{if (hist) then "-hist" else ""} \
      ~{if (vals) then "-vals" else ""} \
      ~{if (bam) then "-bam" else ""} \
      ~{if (seg_len) then "-seg_len" else ""} \
      ~{if (seed) then "-seed" else ""} \
      ~{if (about) then "-about" else ""}
  >>>
  parameter_meta {
    yield_output_file: "yield output file (default: stdout)"
    step: "step size in extrapolations (default: 1e+06)"
    verbose: "print more information"
    pe: "input is paired end read file"
    hist: "input is a text file containing the observed histogram"
    vals: "input is a text file containing only the observed counts"
    bam: "input is in BAM format"
    seg_len: "maximum segment length when merging paired end bam reads\\n(default: 5000)"
    seed: "seed for random number generator"
    about: "print about message"
    c_curve: ""
    sorted_bed_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_yield_output_file = "${in_yield_output_file}"
  }
}