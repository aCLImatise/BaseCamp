version 1.0

task GappaAnalyzePlacementfactorization {
  input {
    File? j_place_path
    File? metadata_table_file
    String? metadata_separator_char
    File? metadata_select_columns
    File? metadata_ignore_columns
    Boolean? point_mass
    Boolean? ignore_multiplicities
    Int? factors
    String? tax_on_weight_tendency
    String? tax_on_weight_norm
    Float? pseudo_count_summand_all
    Float? pseudo_count_summand_zeros
    Directory? out_dir
    File? file_prefix
    File? file_suffix
    Boolean? write_newick_tree
    Boolean? write_nexus_tree
    Boolean? write_phylo_xml_tree
    Boolean? write_svg_tree
    String? svg_tree_shape
    String? svg_tree_type
    Float? svg_tree_stroke_width
    Boolean? svg_tree_ladder_ize
    Boolean? allow_file_overwriting
    Boolean? verbose
    Int? threads
    File? log_file
  }
  command <<<
    gappa analyze placement_factorization \
      ~{if defined(j_place_path) then ("--jplace-path " +  '"' + j_place_path + '"') else ""} \
      ~{if defined(metadata_table_file) then ("--metadata-table-file " +  '"' + metadata_table_file + '"') else ""} \
      ~{if defined(metadata_separator_char) then ("--metadata-separator-char " +  '"' + metadata_separator_char + '"') else ""} \
      ~{if defined(metadata_select_columns) then ("--metadata-select-columns " +  '"' + metadata_select_columns + '"') else ""} \
      ~{if defined(metadata_ignore_columns) then ("--metadata-ignore-columns " +  '"' + metadata_ignore_columns + '"') else ""} \
      ~{if (point_mass) then "--point-mass" else ""} \
      ~{if (ignore_multiplicities) then "--ignore-multiplicities" else ""} \
      ~{if defined(factors) then ("--factors " +  '"' + factors + '"') else ""} \
      ~{if defined(tax_on_weight_tendency) then ("--taxon-weight-tendency " +  '"' + tax_on_weight_tendency + '"') else ""} \
      ~{if defined(tax_on_weight_norm) then ("--taxon-weight-norm " +  '"' + tax_on_weight_norm + '"') else ""} \
      ~{if defined(pseudo_count_summand_all) then ("--pseudo-count-summand-all " +  '"' + pseudo_count_summand_all + '"') else ""} \
      ~{if defined(pseudo_count_summand_zeros) then ("--pseudo-count-summand-zeros " +  '"' + pseudo_count_summand_zeros + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(file_prefix) then ("--file-prefix " +  '"' + file_prefix + '"') else ""} \
      ~{if defined(file_suffix) then ("--file-suffix " +  '"' + file_suffix + '"') else ""} \
      ~{if (write_newick_tree) then "--write-newick-tree" else ""} \
      ~{if (write_nexus_tree) then "--write-nexus-tree" else ""} \
      ~{if (write_phylo_xml_tree) then "--write-phyloxml-tree" else ""} \
      ~{if (write_svg_tree) then "--write-svg-tree" else ""} \
      ~{if defined(svg_tree_shape) then ("--svg-tree-shape " +  '"' + svg_tree_shape + '"') else ""} \
      ~{if defined(svg_tree_type) then ("--svg-tree-type " +  '"' + svg_tree_type + '"') else ""} \
      ~{if defined(svg_tree_stroke_width) then ("--svg-tree-stroke-width " +  '"' + svg_tree_stroke_width + '"') else ""} \
      ~{if (svg_tree_ladder_ize) then "--svg-tree-ladderize" else ""} \
      ~{if (allow_file_overwriting) then "--allow-file-overwriting" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gappa:0.7.1--he513fc3_0"
  }
  parameter_meta {
    j_place_path: ":PATH(existing)=[] ... REQUIRED\\nList of jplace files or directories to process. For directories, only files with the extension `.jplace[.gz]` are processed."
    metadata_table_file: ":FILE REQUIRED\\nTabular char-separated input file."
    metadata_separator_char: ":{comma,tab,space,semicolon}=comma\\nSeparator char for tabular data."
    metadata_select_columns: "Excludes: --metadata-ignore-columns\\nSet the columns to select, by their name in the first (header) line of the table. All others columns are ignored. The options expects either a file with one column name per line, or an actual list of column names separated by --metadata-separator-char"
    metadata_ignore_columns: "Excludes: --metadata-select-columns\\nSet the columns to ignore, by their name in the first (header) line of the table. All others columns are selected. The options expects either a file with one column name per line, or an actual list of column names separated by --metadata-separator-char"
    point_mass: "Treat every pquery as a point mass concentrated on the highest-weight placement."
    ignore_multiplicities: "Set the multiplicity of each pquery to 1."
    factors: "=5            Number of phylogenetic factors to compute."
    tax_on_weight_tendency: ":{geometric-mean,arithmetic-mean,median,none}=geometric-mean\\nTendency term to use for calculating taxon weights."
    tax_on_weight_norm: ":{manhattan,euclidean,maximum,aitchison,none}=euclidean\\nNorm term to use for calculating taxon weights."
    pseudo_count_summand_all: "=0.65\\nConstant that is added to all taxon masses to avoid zero counts."
    pseudo_count_summand_zeros: "=0\\nConstant that is added to taxon masses that are zero, to avoid zero counts."
    out_dir: "=.            Directory to write files to"
    file_prefix: "File prefix for output files"
    file_suffix: "File suffix for output files"
    write_newick_tree: "If set, the tree is written to a Newick file."
    write_nexus_tree: "If set, the tree is written to a Nexus file."
    write_phylo_xml_tree: "If set, the tree is written to a Phyloxml file."
    write_svg_tree: "If set, the tree is written to a Svg file."
    svg_tree_shape: ":{circular,rectangular}=circular\\nShape of the tree."
    svg_tree_type: ":{cladogram,phylogram}=cladogram\\nType of the tree."
    svg_tree_stroke_width: "=5\\nSvg stroke width for the branches of the tree."
    svg_tree_ladder_ize: "If set, the tree is ladderized."
    allow_file_overwriting: "Allow to overwrite existing output files instead of aborting the command."
    verbose: "Produce more verbose output."
    threads: "=1            Number of threads to use for calculations."
    log_file: "Write all output to a log file, in addition to standard output to the terminal."
  }
  output {
    File out_stdout = stdout()
    File out_file_prefix = "${in_file_prefix}"
    File out_file_suffix = "${in_file_suffix}"
    File out_log_file = "${in_log_file}"
  }
}