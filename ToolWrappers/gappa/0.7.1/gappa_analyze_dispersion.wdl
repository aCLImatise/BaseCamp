version 1.0

task GappaAnalyzeDispersion {
  input {
    File? j_place_path
    Int? mass_norm
    Boolean? point_mass
    Boolean? ignore_multiplicities
    String? edge_values
    String? method
    File? color_list
    Boolean? reverse_color_list
    String? mask_color
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
    gappa analyze dispersion \
      ~{if defined(j_place_path) then ("--jplace-path " +  '"' + j_place_path + '"') else ""} \
      ~{if defined(mass_norm) then ("--mass-norm " +  '"' + mass_norm + '"') else ""} \
      ~{if (point_mass) then "--point-mass" else ""} \
      ~{if (ignore_multiplicities) then "--ignore-multiplicities" else ""} \
      ~{if defined(edge_values) then ("--edge-values " +  '"' + edge_values + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(color_list) then ("--color-list " +  '"' + color_list + '"') else ""} \
      ~{if (reverse_color_list) then "--reverse-color-list" else ""} \
      ~{if defined(mask_color) then ("--mask-color " +  '"' + mask_color + '"') else ""} \
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
    mass_norm: ":{absolute,relative}=absolute REQUIRED\\nSet the per-sample normalization method. 'absolute' does not change the masses, while 'relative' normalizes them to a total mass of 1 per input jplace sample."
    point_mass: "Treat every pquery as a point mass concentrated on the highest-weight placement."
    ignore_multiplicities: "Set the multiplicity of each pquery to 1."
    edge_values: ":{both,imbalances,masses}=both\\nValues per edge used to calculate the dispersion."
    method: ":{all,cv,cv-log,sd,sd-log,var,var-log,vmr,vmr-log}=all\\nMethod of dispersion. Either all (as far as they are applicable), or any of: coefficient of variation (cv, standard deviation divided by mean), coefficient of variation log-scaled (cv-log), standard deviation (sd), standard deviation log-scaled (sd-log)variance (var), variance log-scaled (var-log), variance to mean ratio (vmr, also called Index of Dispersion), variance to mean ratio log-scaled (vmr-log)."
    color_list: "=viridis   List of colors to use for the palette. Can either be the name of a color list, a file containing one color per line, or an actual list of colors."
    reverse_color_list: "If set, the `--color-list` is reversed."
    mask_color: "=#dfdfdf   Color used to indicate masked or invalid values."
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