version 1.0

task HmmTrain {
  input {
    Int? list_multiple_sequence
    File? file_defining_mapping
    Int? files_used_indices
    Int? mutually_exclusive_list
    String? fastampmssdefault_ss_alignment
    String? estimating_transition_probabilities
    Int? model_indels_specified
    String? use_specified_topology
    Int? train_indel_model
    Boolean? proceed_quietly_updates
  }
  command <<<
    hmm_train \
      ~{if defined(list_multiple_sequence) then ("-m " +  '"' + list_multiple_sequence + '"') else ""} \
      ~{if defined(file_defining_mapping) then ("-c " +  '"' + file_defining_mapping + '"') else ""} \
      ~{if defined(files_used_indices) then ("-g " +  '"' + files_used_indices + '"') else ""} \
      ~{if defined(mutually_exclusive_list) then ("-M " +  '"' + mutually_exclusive_list + '"') else ""} \
      ~{if defined(fastampmssdefault_ss_alignment) then ("-i " +  '"' + fastampmssdefault_ss_alignment + '"') else ""} \
      ~{if defined(estimating_transition_probabilities) then ("-R " +  '"' + estimating_transition_probabilities + '"') else ""} \
      ~{if defined(model_indels_specified) then ("-I " +  '"' + model_indels_specified + '"') else ""} \
      ~{if defined(use_specified_topology) then ("-t " +  '"' + use_specified_topology + '"') else ""} \
      ~{if defined(train_indel_model) then ("-n " +  '"' + train_indel_model + '"') else ""} \
      ~{if (proceed_quietly_updates) then "-q" else ""}
  >>>
  parameter_meta {
    list_multiple_sequence: "List of multiple sequence alignment files.\\nCurrently, in testing mode, the list must be of length one."
    file_defining_mapping: "File defining mapping of feature types to category\\nnumbers."
    files_used_indices: "Files in GFF defining sequence\\nfeatures to be used in labeling sites.   Frame of reference of\\nfeature indices is determined feature-by-feature according to\\n'seqname' attribute.  Filenames must correspond in number and order\\nto the elements of <msa_fname_list>."
    mutually_exclusive_list: "(Mutually exclusive with -m) Assume alignments\\nof the specified lengths (comma-separated list) and do not not\\nattempt to map the coordinates in the specified GFFs (assume\\nthey are in the desired coordinate frame).  This option allows\\nan HMM to be trained directly from GFFs, without alignments.\\nNot permitted with -I."
    fastampmssdefault_ss_alignment: "|FASTA|MPM|SS\\n(default SS) Alignment format."
    estimating_transition_probabilities: "Before estimating transition probabilities, group features by <tag>\\n(e.g., \\\"transcript_id\\\" or \\\"exon_id\\\") and reverse complement\\nsegments of the alignment corresponding to groups on the\\nreverse strand.  Groups must be non-overlapping (see refeature\\n--unique)."
    model_indels_specified: "Model indels for specified categories.  To have\\nnonzero probability for the states corresponding to a\\nspecified category range, indels must be \\\"clean\\\"\\n(nonoverlapping), must be assignable by parsimony to a single\\nbranch in the phylogenetic tree, and must have lengths that\\nare exact multiples of the category range size.  Avoid -G with\\nthis option.  If used in training mode, requires -T."
    use_specified_topology: "Use the specified tree topology when training\\nfor indels."
    train_indel_model: "Train an indel model for <nseqs>\\nsequences, despite that the training alignment has a different\\nnumber.  All (non-trivial) gap patterns are assumed to be\\nequally frequent."
    proceed_quietly_updates: "Proceed quietly (without updates to stderr)."
  }
  output {
    File out_stdout = stdout()
  }
}