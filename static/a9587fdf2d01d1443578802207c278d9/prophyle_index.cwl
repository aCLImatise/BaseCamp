class: CommandLineTool
id: prophyle_index.cwl
inputs:
- id: in_directory_library_sequences
  doc: "directory with the library sequences [dir. of the first\ntree]"
  type: Directory?
  inputBinding:
    prefix: -g
- id: in_number_of_threads
  doc: number of threads [auto (8)]
  type: long?
  inputBinding:
    prefix: -j
- id: in_kmer_length
  doc: k-mer length [31]
  type: long?
  inputBinding:
    prefix: -k
- id: in_log_file
  doc: log file [<index.dir>/log.txt]
  type: File?
  inputBinding:
    prefix: -l
- id: in_rate_sampling_tree
  doc: rate of sampling of the tree [no sampling]
  type: double?
  inputBinding:
    prefix: -s
- id: in_rewrite_index_files
  doc: rewrite index files if they already exist
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_mask_repeatslow_regions
  doc: mask repeats/low complexity regions (using DustMasker)
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_add_prefixes_node
  doc: "do not add prefixes to node names when multiple trees\nare used"
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_skip_klcp_construction
  doc: skip k-LCP construction (then restarted search only)
  type: boolean?
  inputBinding:
    prefix: -K
- id: in_keep_temporary_files
  doc: keep temporary files from k-mer propagation
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_autocomplete_tree_names
  doc: "autocomplete tree (names of internal nodes and FASTA\npaths)"
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_advanced_configuration_json
  doc: '[STR [STR ...]]  advanced configuration (a JSON dictionary)'
  type: boolean?
  inputBinding:
    prefix: -c
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- prophyle
- index
