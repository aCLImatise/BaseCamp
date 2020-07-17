version 1.0

task CathMapClusters {
  input {
    Boolean? output_version_information
    File? map_from_clust_memb_file
    Boolean? read_batches_from_input
    String? min_equiv_dom_ol
    String? min_equiv_clust_ol
    String? append_batch_id
    File? output_to_file
    File? summarise_to_file
    Boolean? print_entry_results
    Boolean? sorting_help
    String input_file
  }
  command <<<
    cath-map-clusters \
      ~{input_file} \
      ~{true="-v" false="" output_version_information} \
      ~{if defined(map_from_clust_memb_file) then ("--map-from-clustmemb-file " +  '"' + map_from_clust_memb_file + '"') else ""} \
      ~{true="--read-batches-from-input" false="" read_batches_from_input} \
      ~{if defined(min_equiv_dom_ol) then ("--min_equiv_dom_ol " +  '"' + min_equiv_dom_ol + '"') else ""} \
      ~{if defined(min_equiv_clust_ol) then ("--min_equiv_clust_ol " +  '"' + min_equiv_clust_ol + '"') else ""} \
      ~{if defined(append_batch_id) then ("--append-batch-id " +  '"' + append_batch_id + '"') else ""} \
      ~{if defined(output_to_file) then ("--output-to-file " +  '"' + output_to_file + '"') else ""} \
      ~{if defined(summarise_to_file) then ("--summarise-to-file " +  '"' + summarise_to_file + '"') else ""} \
      ~{true="--print-entry-results" false="" print_entry_results} \
      ~{true="--sorting-help" false="" sorting_help}
  >>>
  parameter_meta {
    output_version_information: "[ --version ]                      Output version information"
    map_from_clust_memb_file: "Map numbers from previous clusters specified in <file> to their equivalents in the working clusters where possible and if all the cluster names in <file> are positive integers, renumber leftover new clusters from one plus the largest or if not, rename with new_cmc_cluster_1, new_cmc_cluster_2, ... (of, if unspecified, renumber all working clusters from 1 upwards)"
    read_batches_from_input: "Read batches of work from the input file with lines of format: `batch_id working_clust_memb_file prev_clust_memb_file` where: * batch_id             is a unique label for the batch (with no whitespace) * prev_clust_memb_file is optional"
    min_equiv_dom_ol: "(=60)    Define domain equivalence as: sharing more than <percent>% of residues (over the longest domain) (where <percent> must be ≥ 50)"
    min_equiv_clust_ol: "(=60)  Define cluster equivalence as: more than <percent>% of the map-from cluster's members having equivalents in the working cluster [and them being equivalent to > 20% of the working cluster's entries and > 50% of those that have an equivalence] (where <percent> must be ≥ 50%)"
    append_batch_id: "Append batch ID <id> as an extra column in the results output (equivalent to the first column in a --multi-batch-file input file)"
    output_to_file: "Write output to file <file> (or, if unspecified, to stdout)"
    summarise_to_file: "Print a summary of the renumbering to file <file>"
    print_entry_results: "Output the entry (domain)-level mapping results"
    sorting_help: "Show the criteria for sorting unmapped clusters"
    input_file: ""
  }
}