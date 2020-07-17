version 1.0

task GappaAnalyzePlacementFactorization {
  input {
    String? j_place_path
    String? out_dir
    Boolean? write_newick_tree
    Boolean? write_nexus_tree
    Boolean? write_phylo_xml_tree
    Boolean? write_svg_tree
    Boolean? svg_tree_ladder_ize
    Boolean? allow_file_overwriting
    Boolean? verbose
    String? threads
    String? log_file
  }
  command <<<
    gappa analyze placement-factorization \
      ~{if defined(j_place_path) then ("--jplace-path " +  '"' + j_place_path + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{true="--write-newick-tree" false="" write_newick_tree} \
      ~{true="--write-nexus-tree" false="" write_nexus_tree} \
      ~{true="--write-phyloxml-tree" false="" write_phylo_xml_tree} \
      ~{true="--write-svg-tree" false="" write_svg_tree} \
      ~{true="--svg-tree-ladderize" false="" svg_tree_ladder_ize} \
      ~{true="--allow-file-overwriting" false="" allow_file_overwriting} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    j_place_path: ":PATH(existing)=[] ... REQUIRED List of jplace files or directories to process. For directories, only files with the extension .jplace are processed."
    out_dir: "=.            Directory to write files to"
    write_newick_tree: "If set, the tree is written to a Newick file."
    write_nexus_tree: "If set, the tree is written to a Nexus file."
    write_phylo_xml_tree: "If set, the tree is written to a Phyloxml file."
    write_svg_tree: "If set, the tree is written to a Svg file."
    svg_tree_ladder_ize: "If set, the tree is ladderized."
    allow_file_overwriting: "Allow to overwrite existing output files instead of aborting the command."
    verbose: "Produce more verbose output."
    threads: "=8            Number of threads to use for calculations."
    log_file: "Write all output to a log file, in addition to standard output to the terminal."
  }
}