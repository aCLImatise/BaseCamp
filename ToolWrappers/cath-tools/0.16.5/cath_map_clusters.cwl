class: CommandLineTool
id: cath_map_clusters.cwl
inputs:
- id: in_output_version_information
  doc: '[ --version ]                      Output version information'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_map_from_clust_memb_file
  doc: "Map numbers from previous clusters specified in <file> to their equivalents\
    \ in the working clusters where possible and\nif all the cluster names in <file>\
    \ are positive integers, renumber leftover new clusters from one plus the largest\n\
    or if not, rename with new_cmc_cluster_1, new_cmc_cluster_2, ...\n(of, if unspecified,\
    \ renumber all working clusters from 1 upwards)"
  type: File
  inputBinding:
    prefix: --map-from-clustmemb-file
- id: in_read_batches_from_input
  doc: "Read batches of work from the input file with lines of format: `batch_id working_clust_memb_file\
    \ prev_clust_memb_file` where:\n* batch_id             is a unique label for the\
    \ batch (with no whitespace)\n* prev_clust_memb_file is optional"
  type: boolean
  inputBinding:
    prefix: --read-batches-from-input
- id: in_min_equiv_dom_ol
  doc: "(=60)    Define domain equivalence as: sharing more than <percent>% of residues\
    \ (over the longest domain)\n(where <percent> must be ≥ 50)"
  type: long
  inputBinding:
    prefix: --min_equiv_dom_ol
- id: in_min_equiv_clust_ol
  doc: "(=60)  Define cluster equivalence as: more than <percent>% of the map-from\
    \ cluster's members having equivalents in the working cluster\n[and them being\
    \ equivalent to > 20% of the working cluster's entries and > 50% of those that\
    \ have an equivalence]\n(where <percent> must be ≥ 50%)"
  type: long
  inputBinding:
    prefix: --min_equiv_clust_ol
- id: in_append_batch_id
  doc: Append batch ID <id> as an extra column in the results output (equivalent to
    the first column in a --multi-batch-file input file)
  type: File
  inputBinding:
    prefix: --append-batch-id
- id: in_output_to_file
  doc: Write output to file <file> (or, if unspecified, to stdout)
  type: File
  inputBinding:
    prefix: --output-to-file
- id: in_summarise_to_file
  doc: Print a summary of the renumbering to file <file>
  type: File
  inputBinding:
    prefix: --summarise-to-file
- id: in_print_entry_results
  doc: Output the entry (domain)-level mapping results
  type: boolean
  inputBinding:
    prefix: --print-entry-results
- id: in_sorting_help
  doc: Show the criteria for sorting unmapped clusters
  type: boolean
  inputBinding:
    prefix: --sorting-help
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_to_file
  doc: Write output to file <file> (or, if unspecified, to stdout)
  type: File
  outputBinding:
    glob: $(inputs.in_output_to_file)
cwlVersion: v1.1
baseCommand:
- cath-map-clusters
