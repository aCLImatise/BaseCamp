class: CommandLineTool
id: cath_map_clusters.cwl
inputs:
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: v
  doc: '[ --version ]                      Output version information'
  type: boolean
  inputBinding:
    prefix: -v
- id: map_from_clust_memb_file
  doc: Map numbers from previous clusters specified in <file> to their equivalents
    in the working clusters where possible and if all the cluster names in <file>
    are positive integers, renumber leftover new clusters from one plus the largest
    or if not, rename with new_cmc_cluster_1, new_cmc_cluster_2, ... (of, if unspecified,
    renumber all working clusters from 1 upwards)
  type: File
  inputBinding:
    prefix: --map-from-clustmemb-file
- id: read_batches_from_input
  doc: 'Read batches of work from the input file with lines of format: `batch_id working_clust_memb_file
    prev_clust_memb_file` where: * batch_id             is a unique label for the
    batch (with no whitespace) * prev_clust_memb_file is optional'
  type: boolean
  inputBinding:
    prefix: --read-batches-from-input
- id: min_equiv_dom_ol
  doc: '(=60)    Define domain equivalence as: sharing more than <percent>% of residues
    (over the longest domain) (where <percent> must be ≥ 50)'
  type: string
  inputBinding:
    prefix: --min_equiv_dom_ol
- id: min_equiv_clust_ol
  doc: "(=60)  Define cluster equivalence as: more than <percent>% of the map-from\
    \ cluster's members having equivalents in the working cluster [and them being\
    \ equivalent to > 20% of the working cluster's entries and > 50% of those that\
    \ have an equivalence] (where <percent> must be ≥ 50%)"
  type: string
  inputBinding:
    prefix: --min_equiv_clust_ol
- id: append_batch_id
  doc: Append batch ID <id> as an extra column in the results output (equivalent to
    the first column in a --multi-batch-file input file)
  type: string
  inputBinding:
    prefix: --append-batch-id
- id: output_to_file
  doc: Write output to file <file> (or, if unspecified, to stdout)
  type: File
  inputBinding:
    prefix: --output-to-file
- id: summarise_to_file
  doc: Print a summary of the renumbering to file <file>
  type: File
  inputBinding:
    prefix: --summarise-to-file
- id: print_entry_results
  doc: Output the entry (domain)-level mapping results
  type: boolean
  inputBinding:
    prefix: --print-entry-results
- id: sorting_help
  doc: Show the criteria for sorting unmapped clusters
  type: boolean
  inputBinding:
    prefix: --sorting-help
outputs: []
cwlVersion: v1.1
baseCommand:
- cath-map-clusters
