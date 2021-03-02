version 1.0

task GappaAnalyzeImbalancekmeans {
  input {
    File? j_place_path
    Int? required_number_find
    Boolean? write_overview_file
    Boolean? point_mass
    Boolean? ignore_multiplicities
    File? color_list
    Boolean? reverse_color_list
    Boolean? log_scaling
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
    gappa analyze imbalance_kmeans \
      ~{if defined(j_place_path) then ("--jplace-path " +  '"' + j_place_path + '"') else ""} \
      ~{if defined(required_number_find) then ("--k " +  '"' + required_number_find + '"') else ""} \
      ~{if (write_overview_file) then "--write-overview-file" else ""} \
      ~{if (point_mass) then "--point-mass" else ""} \
      ~{if (ignore_multiplicities) then "--ignore-multiplicities" else ""} \
      ~{if defined(color_list) then ("--color-list " +  '"' + color_list + '"') else ""} \
      ~{if (reverse_color_list) then "--reverse-color-list" else ""} \
      ~{if (log_scaling) then "--log-scaling" else ""} \
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
    docker: "quay.io/biocontainers/gappa:0.7.0--he513fc3_0"
  }
  parameter_meta {
    j_place_path: ":PATH(existing)=[] ... REQUIRED\\nList of jplace files or directories to process. For directories, only files with the extension `.jplace[.gz]` are processed."
    required_number_find: "REQUIRED           Number of clusters to find. Can be a comma-separated list of multiple values or ranges for k, such as `\\\"1-5,8,10,12\\\"`"
    write_overview_file: "If provided, a table file is written that summarizes the average distance and variance of the clusters for each k. Useful for elbow plots."
    point_mass: "Treat every pquery as a point mass concentrated on the highest-weight placement."
    ignore_multiplicities: "Set the multiplicity of each pquery to 1."
    color_list: "=BuPuBk    List of colors to use for the palette. Can either be the name of a color list, a file containing one color per line, or an actual list of colors."
    reverse_color_list: "If set, the `--color-list` is reversed."
    log_scaling: "If set, the sequential color list is logarithmically scaled instead of linearily."
    out_dir: "=.            Directory to write files to"
    file_prefix: "=ikmeans_ File prefix for output files"
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
    threads: "=8            Number of threads to use for calculations."
    log_file: "Write all output to a log file, in addition to standard output to the terminal."
  }
  output {
    File out_stdout = stdout()
    File out_file_prefix = "${in_file_prefix}"
    File out_file_suffix = "${in_file_suffix}"
    File out_log_file = "${in_log_file}"
  }
}