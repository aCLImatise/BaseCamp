version 1.0

task GraftMCreate {
  input {
    File? taxonomy
    String? sequences
    String? re_rooted_tree
    String? alignment
    File? re_rooted_annotated_tree
    String? tree
    Boolean? hmm
    Int? de_replication_level
    Boolean? search_hmm_files
    Int? min_aligned_percent
    File? name_output_graftm
    File? tree_log
    File? tax_tastic_taxonomy
    File? tax_tastic_seq_info
    Directory? force
    Int? threads
    Int? verbosity
    File? log
    Int sequence_one
  }
  command <<<
    graftM create \
      ~{sequence_one} \
      ~{if defined(taxonomy) then ("--taxonomy " +  '"' + taxonomy + '"') else ""} \
      ~{if defined(sequences) then ("--sequences " +  '"' + sequences + '"') else ""} \
      ~{if defined(re_rooted_tree) then ("--rerooted_tree " +  '"' + re_rooted_tree + '"') else ""} \
      ~{if defined(alignment) then ("--alignment " +  '"' + alignment + '"') else ""} \
      ~{if defined(re_rooted_annotated_tree) then ("--rerooted_annotated_tree " +  '"' + re_rooted_annotated_tree + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if (hmm) then "--hmm" else ""} \
      ~{if defined(de_replication_level) then ("--dereplication_level " +  '"' + de_replication_level + '"') else ""} \
      ~{if (search_hmm_files) then "--search_hmm_files" else ""} \
      ~{if defined(min_aligned_percent) then ("--min_aligned_percent " +  '"' + min_aligned_percent + '"') else ""} \
      ~{if defined(name_output_graftm) then ("--output " +  '"' + name_output_graftm + '"') else ""} \
      ~{if defined(tree_log) then ("--tree_log " +  '"' + tree_log + '"') else ""} \
      ~{if defined(tax_tastic_taxonomy) then ("--taxtastic_taxonomy " +  '"' + tax_tastic_taxonomy + '"') else ""} \
      ~{if defined(tax_tastic_seq_info) then ("--taxtastic_seqinfo " +  '"' + tax_tastic_seq_info + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""}
  >>>
  parameter_meta {
    taxonomy: "File containing two tab separated columns, the first with the ID of the sequences, the second with the taxonomy string (required unless --rerooted_annotated_tree or --taxtastic_taxonomy and --taxtastic_seqinfo are specified)"
    sequences: "Unaligned sequences (required)"
    re_rooted_tree: "A tree with which to build the reference package, appropriately rooted. (default: generate tree with FastTree and attempt reroot with taxtastic)"
    alignment: "An alignment with which to build a custom HMM and tree in aligned FASTA format"
    re_rooted_annotated_tree: "Define taxonomy through this annotated newick file."
    tree: "Specify an unrooted tree, GraftM will attempt to reroot it."
    hmm: ".hmm file       Use this HMM for alignment, and search unless --search_hmm_files is specified."
    de_replication_level: "taxonomic rank at which to dereplicate the sequences to create the HMM. Provide an integer that corresponds to the rank (from left to right) will be dereplicated. For example --dereplication_level 3 will omit all sequences that are redundant at the 3rd rank (from left to right in the taxonomy file) from the search HMM.  (0 == No dereplication)"
    search_hmm_files: ".hmm files [.hmm files ...]\\nUse these HMM(s) for search."
    min_aligned_percent: "Remove sequences from the alignment which do not cover at least this percentage of the HMM (default: 30)"
    name_output_graftm: "Name of output GraftM package."
    tree_log: "A log file for the tree."
    tax_tastic_taxonomy: "A taxtastic format taxonomy file. (default: use taxonomy from --taxonomy)"
    tax_tastic_seq_info: "A taxtastic format seqinfo file. (default: use taxonomy from --taxonomy)"
    force: "Overwrite output gpkg directory if it exists."
    threads: "Number of threads to use (default: 5)"
    verbosity: "1 - 5, 1 being silent, 5 being noisy indeed (default: 4)"
    log: "output logging information to file"
    sequence_one: "k__kingdom1; p__phylum2"
  }
  output {
    File out_stdout = stdout()
    Directory out_force = "${in_force}"
    File out_log = "${in_log}"
  }
}