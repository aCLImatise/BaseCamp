version 1.0

task Probcons {
  input {
    Boolean? clustalw
    String? consistency
    String? iterative_refinement
    String? pre_training
    Boolean? pairs
    Boolean? viterbi
    Boolean? verbose
    File? an_not
    File? train
    Boolean? emissions
    File? param_file
    Boolean? alignment_order
    String? option
  }
  command <<<
    probcons \
      ~{option} \
      ~{true="-clustalw" false="" clustalw} \
      ~{if defined(consistency) then ("--consistency " +  '"' + consistency + '"') else ""} \
      ~{if defined(iterative_refinement) then ("--iterative-refinement " +  '"' + iterative_refinement + '"') else ""} \
      ~{if defined(pre_training) then ("--pre-training " +  '"' + pre_training + '"') else ""} \
      ~{true="-pairs" false="" pairs} \
      ~{true="-viterbi" false="" viterbi} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(an_not) then ("-annot " +  '"' + an_not + '"') else ""} \
      ~{if defined(train) then ("--train " +  '"' + train + '"') else ""} \
      ~{true="--emissions" false="" emissions} \
      ~{if defined(param_file) then ("--paramfile " +  '"' + param_file + '"') else ""} \
      ~{true="--alignment-order" false="" alignment_order}
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
    alignment_order: "print sequences in alignment order rather than input order (default: off)"
    option: ""
  }
}