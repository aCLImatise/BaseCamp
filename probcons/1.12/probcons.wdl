version 1.0

task Probcons {
  input {
    Boolean? clustalw
    Int? consistency
    Int? iterative_refinement
    Int? pre_training
    Boolean? pairs
    Boolean? viterbi
    Boolean? verbose
    File? an_not
    File? train
    Boolean? emissions
    File? param_file
    Boolean? alignment_order
  }
  command <<<
    probcons \
      ~{if (clustalw) then "-clustalw" else ""} \
      ~{if defined(consistency) then ("--consistency " +  '"' + consistency + '"') else ""} \
      ~{if defined(iterative_refinement) then ("--iterative-refinement " +  '"' + iterative_refinement + '"') else ""} \
      ~{if defined(pre_training) then ("--pre-training " +  '"' + pre_training + '"') else ""} \
      ~{if (pairs) then "-pairs" else ""} \
      ~{if (viterbi) then "-viterbi" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(an_not) then ("-annot " +  '"' + an_not + '"') else ""} \
      ~{if defined(train) then ("--train " +  '"' + train + '"') else ""} \
      ~{if (emissions) then "--emissions" else ""} \
      ~{if defined(param_file) then ("--paramfile " +  '"' + param_file + '"') else ""} \
      ~{if (alignment_order) then "--alignment-order" else ""}
  >>>
  parameter_meta {
    clustalw: "use CLUSTALW output format instead of MFA"
    consistency: "use 0 <= REPS <= 5 (default: 2) passes of consistency transformation"
    iterative_refinement: "use 0 <= REPS <= 1000 (default: 100) passes of iterative-refinement"
    pre_training: "use 0 <= REPS <= 20 (default: 0) rounds of pretraining"
    pairs: "generate all-pairs pairwise alignments"
    viterbi: "use Viterbi algorithm to generate all pairs (automatically enables -pairs)"
    verbose: "report progress while aligning (default: off)"
    an_not: "write annotation for multiple alignment to FILENAME"
    train: "compute EM transition probabilities, store in FILENAME (default: no training)"
    emissions: "also reestimate emission probabilities (default: off)"
    param_file: "read parameters from FILENAME (default: )"
    alignment_order: "print sequences in alignment order rather than input order (default: off)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}