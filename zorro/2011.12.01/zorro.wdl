version 1.0

task Zorro {
  input {
    Boolean? sample
    Boolean? no_sample
    Boolean? no_weighting
    Boolean? ignore_gaps
    Int? n_sample
    String? tree_prog
    File? guide
    File filename
  }
  command <<<
    zorro \
      ~{filename} \
      ~{if (sample) then "-sample" else ""} \
      ~{if (no_sample) then "-nosample" else ""} \
      ~{if (no_weighting) then "-noweighting" else ""} \
      ~{if (ignore_gaps) then "-ignoregaps" else ""} \
      ~{if defined(n_sample) then ("-Nsample " +  '"' + n_sample + '"') else ""} \
      ~{if defined(tree_prog) then ("-treeprog " +  '"' + tree_prog + '"') else ""} \
      ~{if defined(guide) then ("-guide " +  '"' + guide + '"') else ""}
  >>>
  parameter_meta {
    sample: ": Sampling pairs to calculate alignment reliabilty [Off By Default]"
    no_sample: ": No Sampling i.e. using every pair to calculate alignment reliabilty [On By Default]"
    no_weighting: ": Using sum of pairs instead of weighted sum of pairs to calculate column confidence [Off By Default]"
    ignore_gaps: ": Ignore pair-gaps in columns when calculating column confidences [Off By Default]"
    n_sample: ": Tells ZORRO to sample #NUMBER pairs when sampling, automatically turns on -sample option [Samples 10*Nseq sequences By Default]"
    tree_prog: ": Tells ZORRO to use PROGRAM instead of the default FastTree to create guide tree [FastTree By Default]"
    guide: ": User provided guide tree"
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}