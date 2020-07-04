version 1.0

task GappaExamineHeatTree {
  input {
    String? j_place_path
    String? mass_norm
    Boolean? point_mass
    Boolean? ignore_multiplicities
    String? color_list
    Boolean? reverse_color_list
    Boolean? log_scaling
    Float? max_value
    Boolean? clip_over
    String? over_color
    Float? min_value
    Boolean? clip_under
    String? under_color
    Boolean? clip
    Float? mask_value
    String? mask_color
    Boolean? write_newick_tree
    Boolean? write_nexus_tree
    Boolean? write_phylo_xml_tree
    Boolean? write_svg_tree
    Boolean? svg_tree_ladder_ize
    String? out_dir
    String? tree_file_prefix
    Boolean? allow_file_overwriting
    Boolean? verbose
    String? threads
    String? log_file
  }
  command <<<
    gappa examine heat-tree \
      ~{if defined(j_place_path) then ("--jplace-path " +  '"' + j_place_path + '"') else ""} \
      ~{if defined(mass_norm) then ("--mass-norm " +  '"' + mass_norm + '"') else ""} \
      ~{true="--point-mass" false="" point_mass} \
      ~{true="--ignore-multiplicities" false="" ignore_multiplicities} \
      ~{if defined(color_list) then ("--color-list " +  '"' + color_list + '"') else ""} \
      ~{true="--reverse-color-list" false="" reverse_color_list} \
      ~{true="--log-scaling" false="" log_scaling} \
      ~{if defined(max_value) then ("--max-value " +  '"' + max_value + '"') else ""} \
      ~{true="--clip-over" false="" clip_over} \
      ~{if defined(over_color) then ("--over-color " +  '"' + over_color + '"') else ""} \
      ~{if defined(min_value) then ("--min-value " +  '"' + min_value + '"') else ""} \
      ~{true="--clip-under" false="" clip_under} \
      ~{if defined(under_color) then ("--under-color " +  '"' + under_color + '"') else ""} \
      ~{true="--clip" false="" clip} \
      ~{if defined(mask_value) then ("--mask-value " +  '"' + mask_value + '"') else ""} \
      ~{if defined(mask_color) then ("--mask-color " +  '"' + mask_color + '"') else ""} \
      ~{true="--write-newick-tree" false="" write_newick_tree} \
      ~{true="--write-nexus-tree" false="" write_nexus_tree} \
      ~{true="--write-phyloxml-tree" false="" write_phylo_xml_tree} \
      ~{true="--write-svg-tree" false="" write_svg_tree} \
      ~{true="--svg-tree-ladderize" false="" svg_tree_ladder_ize} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(tree_file_prefix) then ("--tree-file-prefix " +  '"' + tree_file_prefix + '"') else ""} \
      ~{true="--allow-file-overwriting" false="" allow_file_overwriting} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    j_place_path: ":PATH(existing)=[] ... REQUIRED List of jplace files or directories to process. For directories, only files with the extension .jplace are processed."
    mass_norm: ":{absolute,relative}=absolute Set the per-sample normalization method. 'absolute' does not change the masses, while 'relative' normalizes them to a total mass of 1 per input jplace sample."
    point_mass: "Treat every pquery as a point mass concentrated on the highest-weight placement."
    ignore_multiplicities: "Set the multiplicity of each pquery to 1."
    color_list: "=BuPuBk    List of colors to use for the palette. Can either be the name of a color list, a file containing one color per line, or an actual list of colors."
    reverse_color_list: "If set, the --color-list is reversed."
    log_scaling: "If set, the sequential color list is logarithmically scaled instead of linearily."
    max_value: "=1         Maximum value that is represented by the color scale. If not set, the maximum value in the data is used."
    clip_over: "Clip (clamp) values greater than max to be inside [ min, max ]. If set, --over-color is not used to indicate values out of range."
    over_color: "=#00ffff   Color used to indicate values above max."
    min_value: "=0         Minimum value that is represented by the color scale. If not set, the minimum value in the data is used."
    clip_under: "Clip (clamp) values less than min to be inside [ min, max ]. If set, --under-color is not used to indicate values out of range."
    under_color: "=#ff00ff  Color used to indicate values below min."
    clip: "Clip (clamp) values to be inside [ min, max ]. This option is a shortcut to set --clip-under and --clip-over at once."
    mask_value: "=nan      Mask value that identifies invalid values. Value in the data that compare equal to the mask value are colored using --mask-color. This is meant as a simple means of filtering and visualizing invalid values. If not set, no masking value is applied."
    mask_color: "=#ffff00   Color used to indicate masked values."
    write_newick_tree: "If set, the tree is written to a Newick file."
    write_nexus_tree: "If set, the tree is written to a Nexus file."
    write_phylo_xml_tree: "If set, the tree is written to a Phyloxml file."
    write_svg_tree: "If set, the tree is written to a Svg file."
    svg_tree_ladder_ize: "If set, the tree is ladderized."
    out_dir: "=.            Directory to write files to"
    tree_file_prefix: "=tree File prefix for tree files"
    allow_file_overwriting: "Allow to overwrite existing output files instead of aborting the command."
    verbose: "Produce more verbose output."
    threads: "=8            Number of threads to use for calculations."
    log_file: "Write all output to a log file, in addition to standard output to the terminal."
  }
}