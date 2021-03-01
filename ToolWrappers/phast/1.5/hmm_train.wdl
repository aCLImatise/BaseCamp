version 1.0

task HmmTrain {
  input {
    Int? list_multiple_filescurrently
    File? file_defining_mapping
    Int? files_gff_defining
    Int? mutually_exclusive_m
    String? fastampmssdefault_ss_alignment
    String? estimating_group_features
    Int? model_indels_specified
    String? use_specified_topology
    Int? train_indel_model
    Boolean? proceed_quietly_stderr
  }
  command <<<
    hmm_train \
      ~{if defined(list_multiple_filescurrently) then ("-m " +  '"' + list_multiple_filescurrently + '"') else ""} \
      ~{if defined(file_defining_mapping) then ("-c " +  '"' + file_defining_mapping + '"') else ""} \
      ~{if defined(files_gff_defining) then ("-g " +  '"' + files_gff_defining + '"') else ""} \
      ~{if defined(mutually_exclusive_m) then ("-M " +  '"' + mutually_exclusive_m + '"') else ""} \
      ~{if defined(fastampmssdefault_ss_alignment) then ("-i " +  '"' + fastampmssdefault_ss_alignment + '"') else ""} \
      ~{if defined(estimating_group_features) then ("-R " +  '"' + estimating_group_features + '"') else ""} \
      ~{if defined(model_indels_specified) then ("-I " +  '"' + model_indels_specified + '"') else ""} \
      ~{if defined(use_specified_topology) then ("-t " +  '"' + use_specified_topology + '"') else ""} \
      ~{if defined(train_indel_model) then ("-n " +  '"' + train_indel_model + '"') else ""} \
      ~{if (proceed_quietly_stderr) then "-q" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    list_multiple_filescurrently: "List of multiple sequence alignment files.\\nCurrently, in testing mode, the list must be of length one."
    file_defining_mapping: "File defining mapping of feature types to category\\nnumbers."
    files_gff_defining: "Files in GFF defining sequence\\nfeatures to be used in labeling sites.   Frame of reference of\\nfeature indices is determined feature-by-feature according to\\n'seqname' attribute.  Filenames must correspond in number and order\\nto the elements of <msa_fname_list>."
    mutually_exclusive_m: "(Mutually exclusive with -m) Assume alignments\\nof the specified lengths (comma-separated list) and do not not\\nattempt to map the coordinates in the specified GFFs (assume\\nthey are in the desired coordinate frame).  This option allows\\nan HMM to be trained directly from GFFs, without alignments.\\nNot permitted with -I."
    fastampmssdefault_ss_alignment: "|FASTA|MPM|SS\\n(default SS) Alignment format."
    estimating_group_features: "Before estimating transition probabilities, group features by <tag>\\n(e.g., \\\"transcript_id\\\" or \\\"exon_id\\\") and reverse complement\\nsegments of the alignment corresponding to groups on the\\nreverse strand.  Groups must be non-overlapping (see refeature\\n--unique)."
    model_indels_specified: "Model indels for specified categories.  To have\\nnonzero probability for the states corresponding to a\\nspecified category range, indels must be \\\"clean\\\"\\n(nonoverlapping), must be assignable by parsimony to a single\\nbranch in the phylogenetic tree, and must have lengths that\\nare exact multiples of the category range size.  Avoid -G with\\nthis option.  If used in training mode, requires -T."
    use_specified_topology: "Use the specified tree topology when training\\nfor indels."
    train_indel_model: "Train an indel model for <nseqs>\\nsequences, despite that the training alignment has a different\\nnumber.  All (non-trivial) gap patterns are assumed to be\\nequally frequent."
    proceed_quietly_stderr: "Proceed quietly (without updates to stderr)."
  }
  output {
    File out_stdout = stdout()
  }
}