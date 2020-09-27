class: CommandLineTool
id: graftM_create.cwl
inputs:
- id: in_taxonomy
  doc: File containing two tab separated columns, the first with the ID of the sequences,
    the second with the taxonomy string (required unless --rerooted_annotated_tree
    or --taxtastic_taxonomy and --taxtastic_seqinfo are specified)
  type: File
  inputBinding:
    prefix: --taxonomy
- id: in_sequences
  doc: Unaligned sequences (required)
  type: string
  inputBinding:
    prefix: --sequences
- id: in_re_rooted_tree
  doc: 'A tree with which to build the reference package, appropriately rooted. (default:
    generate tree with FastTree and attempt reroot with taxtastic)'
  type: string
  inputBinding:
    prefix: --rerooted_tree
- id: in_alignment
  doc: An alignment with which to build a custom HMM and tree in aligned FASTA format
  type: string
  inputBinding:
    prefix: --alignment
- id: in_re_rooted_annotated_tree
  doc: Define taxonomy through this annotated newick file.
  type: File
  inputBinding:
    prefix: --rerooted_annotated_tree
- id: in_tree
  doc: Specify an unrooted tree, GraftM will attempt to reroot it.
  type: string
  inputBinding:
    prefix: --tree
- id: in_hmm
  doc: .hmm file       Use this HMM for alignment, and search unless --search_hmm_files
    is specified.
  type: boolean
  inputBinding:
    prefix: --hmm
- id: in_de_replication_level
  doc: taxonomic rank at which to dereplicate the sequences to create the HMM. Provide
    an integer that corresponds to the rank (from left to right) will be dereplicated.
    For example --dereplication_level 3 will omit all sequences that are redundant
    at the 3rd rank (from left to right in the taxonomy file) from the search HMM.  (0
    == No dereplication)
  type: long
  inputBinding:
    prefix: --dereplication_level
- id: in_search_hmm_files
  doc: ".hmm files [.hmm files ...]\nUse these HMM(s) for search."
  type: boolean
  inputBinding:
    prefix: --search_hmm_files
- id: in_min_aligned_percent
  doc: 'Remove sequences from the alignment which do not cover at least this percentage
    of the HMM (default: 30)'
  type: long
  inputBinding:
    prefix: --min_aligned_percent
- id: in_output
  doc: Name of output GraftM package.
  type: File
  inputBinding:
    prefix: --output
- id: in_tree_log
  doc: A log file for the tree.
  type: File
  inputBinding:
    prefix: --tree_log
- id: in_tax_tastic_taxonomy
  doc: 'A taxtastic format taxonomy file. (default: use taxonomy from --taxonomy)'
  type: File
  inputBinding:
    prefix: --taxtastic_taxonomy
- id: in_tax_tastic_seq_info
  doc: 'A taxtastic format seqinfo file. (default: use taxonomy from --taxonomy)'
  type: File
  inputBinding:
    prefix: --taxtastic_seqinfo
- id: in_force
  doc: Overwrite output gpkg directory if it exists.
  type: Directory
  inputBinding:
    prefix: --force
- id: in_threads
  doc: 'Number of threads to use (default: 5)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_verbosity
  doc: '1 - 5, 1 being silent, 5 being noisy indeed (default: 4)'
  type: long
  inputBinding:
    prefix: --verbosity
- id: in_log
  doc: output logging information to file
  type: File
  inputBinding:
    prefix: --log
- id: in_sequence_one
  doc: k__kingdom1; p__phylum2
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force
  doc: Overwrite output gpkg directory if it exists.
  type: Directory
  outputBinding:
    glob: $(inputs.in_force)
- id: out_log
  doc: output logging information to file
  type: File
  outputBinding:
    glob: $(inputs.in_log)
cwlVersion: v1.1
baseCommand:
- graftM
- create
