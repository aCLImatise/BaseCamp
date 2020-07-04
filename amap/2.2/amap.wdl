version 1.0

task Amap {
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
    String? gap_factor
    String? edge_weight_threshold
    Boolean? progressive
    Boolean? no_edge_reordering
    Boolean? use_max_step_size
    Boolean? print_posteriors
    Boolean? gui
    String? option
  }
  command <<<
    amap \
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
      ~{true="--alignment-order" false="" alignment_order} \
      ~{if defined(gap_factor) then ("--gap-factor " +  '"' + gap_factor + '"') else ""} \
      ~{if defined(edge_weight_threshold) then ("--edge-weight-threshold " +  '"' + edge_weight_threshold + '"') else ""} \
      ~{true="--progressive" false="" progressive} \
      ~{true="--no-edge-reordering" false="" no_edge_reordering} \
      ~{true="--use-max-stepsize" false="" use_max_step_size} \
      ~{true="--print-posteriors" false="" print_posteriors} \
      ~{true="-gui" false="" gui}
  >>>
  parameter_meta {
    clustalw: "use CLUSTALW output format instead of MFA"
    consistency: "use 0 <= REPS <= 5 (default: 0) passes of consistency transformation"
    iterative_refinement: "use 0 <= REPS <= 1000 (default: 0) passes of iterative-refinement"
    pre_training: "use 0 <= REPS <= 20 (default: 0) rounds of pretraining"
    pairs: "generate all-pairs pairwise alignments"
    viterbi: "use Viterbi algorithm to generate all pairs (automatically enables -pairs)"
    verbose: "report progress while aligning (default: off)"
    an_not: "write annotation for multiple alignment to FILENAME"
    train: "compute EM transition probabilities, store in FILENAME (default: no training)"
    emissions: "also reestimate emission probabilities (default: off)"
    param_file: "read parameters from FILENAME (default: )"
    alignment_order: "print sequences in alignment order rather than input order (default: off)"
    gap_factor: "use GF as the gap-factor parameter, set to 0 for best sensitivity, higher values for better specificity (default: 1)"
    edge_weight_threshold: "stop the sequence annealing process when best edge has lower weight than W, set to 0 for best sensitivity, higher values for better specificity (default: 0)"
    progressive: "use progresive alignment instead of sequence annealing alignment (default: off)"
    no_edge_reordering: "disable reordring of edges during sequence annealing alignment (default: off)"
    use_max_step_size: "use maximum improvement step size instead of tGf edge ranking (default: off)"
    print_posteriors: "only print the posterior probability matrices (default: off)"
    gui: "[START] [STEP] print output for the AMAP Display Java based GUI (default: off)  starting at weight START (default: infinity) with step size STEP (default: 1)"
    option: ""
  }
}