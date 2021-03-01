version 1.0

task PruneOtuspy {
  input {
    String? seqs_otus_fn
    File? id_to_taxonomy_fn
    Int? percent_of_samples
    Float? percent_of_sequences
    String? phylogenetic_level
    File? output_pruned_otus_fn
    File? output_removed_otus_fn
  }
  command <<<
    prune_otus_py \
      ~{if defined(seqs_otus_fn) then ("--seqs_otus_fn " +  '"' + seqs_otus_fn + '"') else ""} \
      ~{if defined(id_to_taxonomy_fn) then ("--id_to_taxonomy_fn " +  '"' + id_to_taxonomy_fn + '"') else ""} \
      ~{if defined(percent_of_samples) then ("--percent_of_samples " +  '"' + percent_of_samples + '"') else ""} \
      ~{if defined(percent_of_sequences) then ("--percent_of_sequences " +  '"' + percent_of_sequences + '"') else ""} \
      ~{if defined(phylogenetic_level) then ("--phylogenetic_level " +  '"' + phylogenetic_level + '"') else ""} \
      ~{if defined(output_pruned_otus_fn) then ("--output_pruned_otus_fn " +  '"' + output_pruned_otus_fn + '"') else ""} \
      ~{if defined(output_removed_otus_fn) then ("--output_removed_otus_fn " +  '"' + output_removed_otus_fn + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    seqs_otus_fn: "The output from the pick OTUs step, e.g. seqs_otus.txt"
    id_to_taxonomy_fn: "Path to tab-delimited file mapping sequences to\\nassigned taxonomy."
    percent_of_samples: "OTUs that occur in less than this percent of samples\\nwill be removed. Default is 5 percent."
    percent_of_sequences: "OTUs that occur in less than this percent of total\\nsequences will be removed. Default is 0.01 percent."
    phylogenetic_level: "Set the phylogenetic level at which to join OTUs for\\nconsideration in pruning. Default is 'g'(group)."
    output_pruned_otus_fn: "The main output file that will contain the remaining\\nOTUs and sequence IDs."
    output_removed_otus_fn: "The file to write out the set of OTUs that were\\nremoved by the filter."
  }
  output {
    File out_stdout = stdout()
    File out_output_pruned_otus_fn = "${in_output_pruned_otus_fn}"
    File out_output_removed_otus_fn = "${in_output_removed_otus_fn}"
  }
}