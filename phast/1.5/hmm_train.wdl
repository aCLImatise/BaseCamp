version 1.0

task HmmTrain {
  input {
    String? _outhmm
    String? list_multiple_currently
    String? file_defining_mapping
    String? estimating_group_features
    String? model_indels_specified
    String? use_specified_topology
    String? train_indel_model
    Boolean? proceed_quietly_updates
  }
  command <<<
    hmm_train \
      ~{if defined(_outhmm) then ("-g " +  '"' + _outhmm + '"') else ""} \
      ~{if defined(list_multiple_currently) then ("-m " +  '"' + list_multiple_currently + '"') else ""} \
      ~{if defined(file_defining_mapping) then ("-c " +  '"' + file_defining_mapping + '"') else ""} \
      ~{if defined(estimating_group_features) then ("-R " +  '"' + estimating_group_features + '"') else ""} \
      ~{if defined(model_indels_specified) then ("-I " +  '"' + model_indels_specified + '"') else ""} \
      ~{if defined(use_specified_topology) then ("-t " +  '"' + use_specified_topology + '"') else ""} \
      ~{if defined(train_indel_model) then ("-n " +  '"' + train_indel_model + '"') else ""} \
      ~{true="-q" false="" proceed_quietly_updates}
  >>>
  parameter_meta {
    _outhmm: "[OPTIONS] > out.hmm "
    list_multiple_currently: "List of multiple sequence alignment files. Currently, in testing mode, the list must be of length one."
    file_defining_mapping: "File defining mapping of feature types to category numbers."
    estimating_group_features: "Before estimating transition probabilities, group features by <tag> (e.g., \"transcript_id\" or \"exon_id\") and reverse complement segments of the alignment corresponding to groups on the reverse strand.  Groups must be non-overlapping (see refeature --unique). "
    model_indels_specified: "Model indels for specified categories.  To have nonzero probability for the states corresponding to a specified category range, indels must be \"clean\" (nonoverlapping), must be assignable by parsimony to a single branch in the phylogenetic tree, and must have lengths that are exact multiples of the category range size.  Avoid -G with this option.  If used in training mode, requires -T."
    use_specified_topology: "Use the specified tree topology when training for indels. "
    train_indel_model: "Train an indel model for <nseqs> sequences, despite that the training alignment has a different number.  All (non-trivial) gap patterns are assumed to be equally frequent."
    proceed_quietly_updates: "Proceed quietly (without updates to stderr)."
  }
}