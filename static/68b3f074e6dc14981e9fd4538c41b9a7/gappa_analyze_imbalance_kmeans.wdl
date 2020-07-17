version 1.0

task GappaAnalyzeImbalanceKmeans {
  input {
    String? j_place_path
    String? required_number_clusters
    Boolean? write_overview_file
    Boolean? point_mass
    Boolean? ignore_multiplicities
    String? color_list
    Boolean? reverse_color_list
    Boolean? log_scaling
    Boolean? write_newick_tree
    Boolean? write_nexus_tree
    Boolean? write_phylo_xml_tree
    Boolean? write_svg_tree
    Boolean? svg_tree_ladder_ize
    String? out_dir
    String? file_prefix
    Boolean? allow_file_overwriting
    Boolean? verbose
    String? threads
    String? log_file
  }
  command <<<
    gappa analyze imbalance-kmeans \
      ~{if defined(j_place_path) then ("--jplace-path " +  '"' + j_place_path + '"') else ""} \
      ~{if defined(required_number_clusters) then ("--k " +  '"' + required_number_clusters + '"') else ""} \
      ~{true="--write-overview-file" false="" write_overview_file} \
      ~{true="--point-mass" false="" point_mass} \
      ~{true="--ignore-multiplicities" false="" ignore_multiplicities} \
      ~{if defined(color_list) then ("--color-list " +  '"' + color_list + '"') else ""} \
      ~{true="--reverse-color-list" false="" reverse_color_list} \
      ~{true="--log-scaling" false="" log_scaling} \
      ~{true="--write-newick-tree" false="" write_newick_tree} \
      ~{true="--write-nexus-tree" false="" write_nexus_tree} \
      ~{true="--write-phyloxml-tree" false="" write_phylo_xml_tree} \
      ~{true="--write-svg-tree" false="" write_svg_tree} \
      ~{true="--svg-tree-ladderize" false="" svg_tree_ladder_ize} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(file_prefix) then ("--file-prefix " +  '"' + file_prefix + '"') else ""} \
      ~{true="--allow-file-overwriting" false="" allow_file_overwriting} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    j_place_path: ":PATH(existing)=[] ... REQUIRED List of jplace files or directories to process. For directories, only files with the extension .jplace are processed."
    required_number_clusters: "REQUIRED           Number of clusters to find. Can be a comma-separated list of multiple values or ranges for k: 1-5,8,10,12"
    write_overview_file: "If provided, a table file is written that summarizes the average distance and variance of the clusters for each k. Useful for elbow plots."
    point_mass: "Treat every pquery as a point mass concentrated on the highest-weight placement."
    ignore_multiplicities: "Set the multiplicity of each pquery to 1."
    color_list: "=BuPuBk    List of colors to use for the palette. Can either be the name of a color list, a file containing one color per line, or an actual list of colors."
    reverse_color_list: "If set, the --color-list is reversed."
    log_scaling: "If set, the sequential color list is logarithmically scaled instead of linearily."
    write_newick_tree: "If set, the tree is written to a Newick file."
    write_nexus_tree: "If set, the tree is written to a Nexus file."
    write_phylo_xml_tree: "If set, the tree is written to a Phyloxml file."
    write_svg_tree: "If set, the tree is written to a Svg file."
    svg_tree_ladder_ize: "If set, the tree is ladderized."
    out_dir: "=.            Directory to write files to"
    file_prefix: "=ikmeans_ File prefix for output files"
    allow_file_overwriting: "Allow to overwrite existing output files instead of aborting the command."
    verbose: "Produce more verbose output."
    threads: "=8            Number of threads to use for calculations."
    log_file: "Write all output to a log file, in addition to standard output to the terminal."
  }
}