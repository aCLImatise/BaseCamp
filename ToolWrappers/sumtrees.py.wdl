version 1.0

task Sumtreespy {
  input {
    String? source_format
    Int? burnin
    Boolean? force_rooted
    Boolean? force_unrooted
    Boolean? weighted_trees
    Boolean? preserve_underscores
    Float? ultrametric_ity_precision
    File? tax_on_names_file_path
    File? tip_ages_file_path
    File? tip_ages_format
    Boolean? no_trim_tip_age_labels
    File? target_tree_file_path
    Int? summary_target
    Boolean? _mincladefreq_
    Boolean? allow_unknown_target_tree_tax_a
    String? root_target_at_out_group
    Boolean? root_target_at_midpoint
    String? set_out_group
    Int? set_edges
    Int? force_minimum_edge_length
    Boolean? collapse_negative_edges
    Boolean? summarize_node_ages
    String? labels
    Boolean? suppress_annotations
    Boolean? percentages
    Boolean? _decimals_number
    File? output_tree_file_path
    String? output_tree_format
    String? extended_output
    Boolean? no_tax_a_block
    Boolean? no_analysis_metainformation
    File? additional_comments
    File? replace
    Boolean? maximum_multiprocessing
    Int? multiprocessing
    Int? log_frequency
    Boolean? quiet
    Boolean? ignore_missing_support
    Boolean? usage_examples
    Boolean? describe
    File tree_file_path
  }
  command <<<
    sumtrees_py \
      ~{tree_file_path} \
      ~{if defined(source_format) then ("--source-format " +  '"' + source_format + '"') else ""} \
      ~{if defined(burnin) then ("--burnin " +  '"' + burnin + '"') else ""} \
      ~{if (force_rooted) then "--force-rooted" else ""} \
      ~{if (force_unrooted) then "--force-unrooted" else ""} \
      ~{if (weighted_trees) then "--weighted-trees" else ""} \
      ~{if (preserve_underscores) then "--preserve-underscores" else ""} \
      ~{if defined(ultrametric_ity_precision) then ("--ultrametricity-precision " +  '"' + ultrametric_ity_precision + '"') else ""} \
      ~{if defined(tax_on_names_file_path) then ("--taxon-names-filepath " +  '"' + tax_on_names_file_path + '"') else ""} \
      ~{if defined(tip_ages_file_path) then ("--tip-ages-filepath " +  '"' + tip_ages_file_path + '"') else ""} \
      ~{if defined(tip_ages_format) then ("--tip-ages-format " +  '"' + tip_ages_format + '"') else ""} \
      ~{if (no_trim_tip_age_labels) then "--no-trim-tip-age-labels" else ""} \
      ~{if defined(target_tree_file_path) then ("--target-tree-filepath " +  '"' + target_tree_file_path + '"') else ""} \
      ~{if defined(summary_target) then ("--summary-target " +  '"' + summary_target + '"') else ""} \
      ~{if (_mincladefreq_) then "-f" else ""} \
      ~{if (allow_unknown_target_tree_tax_a) then "--allow-unknown-target-tree-taxa" else ""} \
      ~{if defined(root_target_at_out_group) then ("--root-target-at-outgroup " +  '"' + root_target_at_out_group + '"') else ""} \
      ~{if (root_target_at_midpoint) then "--root-target-at-midpoint" else ""} \
      ~{if defined(set_out_group) then ("--set-outgroup " +  '"' + set_out_group + '"') else ""} \
      ~{if defined(set_edges) then ("--set-edges " +  '"' + set_edges + '"') else ""} \
      ~{if defined(force_minimum_edge_length) then ("--force-minimum-edge-length " +  '"' + force_minimum_edge_length + '"') else ""} \
      ~{if (collapse_negative_edges) then "--collapse-negative-edges" else ""} \
      ~{if (summarize_node_ages) then "--summarize-node-ages" else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if (suppress_annotations) then "--suppress-annotations" else ""} \
      ~{if (percentages) then "--percentages" else ""} \
      ~{if (_decimals_number) then "-d" else ""} \
      ~{if defined(output_tree_file_path) then ("--output-tree-filepath " +  '"' + output_tree_file_path + '"') else ""} \
      ~{if defined(output_tree_format) then ("--output-tree-format " +  '"' + output_tree_format + '"') else ""} \
      ~{if defined(extended_output) then ("--extended-output " +  '"' + extended_output + '"') else ""} \
      ~{if (no_tax_a_block) then "--no-taxa-block" else ""} \
      ~{if (no_analysis_metainformation) then "--no-analysis-metainformation" else ""} \
      ~{if defined(additional_comments) then ("--additional-comments " +  '"' + additional_comments + '"') else ""} \
      ~{if (replace) then "--replace" else ""} \
      ~{if (maximum_multiprocessing) then "--maximum-multiprocessing" else ""} \
      ~{if defined(multiprocessing) then ("--multiprocessing " +  '"' + multiprocessing + '"') else ""} \
      ~{if defined(log_frequency) then ("--log-frequency " +  '"' + log_frequency + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (ignore_missing_support) then "--ignore-missing-support" else ""} \
      ~{if (usage_examples) then "--usage-examples" else ""} \
      ~{if (describe) then "--describe" else ""}
  >>>
  parameter_meta {
    source_format: "Format of all input trees (defaults to handling either\\nNEXUS or NEWICK through inspection; it is more\\nefficient to explicitly specify the format if it is\\nknown)."
    burnin: "Number of trees to skip from the beginning of *each*\\ntree file when counting support (default: 0)."
    force_rooted: "Treat source trees as rooted."
    force_unrooted: "Treat source trees as unrooted."
    weighted_trees: "Use weights of trees (as indicated by '[&W m/n]'\\ncomment token) to weight contribution of splits found\\non each tree to overall split frequencies."
    preserve_underscores: "Do not convert unprotected (unquoted) underscores to\\nspaces when reading NEXUS/NEWICK format trees."
    ultrametric_ity_precision: "Precision to use when validating ultrametricity\\n(default: 1e-05; specify '0' to disable validation)."
    tax_on_names_file_path: "Path to file listing all the taxon names or labels\\nthat will be found across the entire set of source\\ntrees. This file should be a plain text file with a\\nsingle name list on each line. This file is only read\\nwhen multiprocessing ('-M' or '-m') is requested. When\\nmultiprocessing using the '-M' or '-m' options, all\\ntaxon names need to be defined in advance of any\\nactual tree analysis. By default this is done by\\nreading the first tree in the first tree source and\\nextracting the taxon names. At best, this is,\\ninefficient, as it involves an extraneous reading of\\nthe tree. At worst, this can be errorneous, if the\\nfirst tree does not contain all the taxa. Explicitly\\nproviding the taxon names via this option can avoid\\nthese issues."
    tip_ages_file_path: "Path to file providing ages (i.e., time from present)\\nof tips. For format of this file, see '--tip-age-\\nformat'. If not specified, or for any taxon omitted\\nfrom the data, an age of 0.0 will be assumed."
    tip_ages_format: "Format of the tip date data (default: 'tsv'):\\n- 'tsv'\\nA tab-delimited file. This should consist of two\\ncolumns separated by tabs. The first column\\nlists the taxon labels (matching the taxon label\\nof the input trees EXACTLY) and the second\\ncolumn lists the ages of the corresponding tips.\\n- 'csv'\\nA comma-delimited file. This should consist of\\ntwo columns separated by commas. The first\\ncolumn lists the taxon labels (matching the\\ntaxon label of the input trees EXACTLY) and the\\nsecond column lists the ages of the\\ncorresponding tips.\\n- 'json'\\nA JSON file. This should specify a single\\ndictionary at the top-level with keys being\\ntaxon labels (matching the taxon labels of the\\ninput trees EXACTLY) and values being the ages\\nof the corresponding tips."
    no_trim_tip_age_labels: "By default, whitespace will be trimmed from the labels\\nfound in the tip ages data source. Specifing this\\noption suppresses this."
    target_tree_file_path: "Summarize support and other information from the\\nsource trees to topology or topologies given by the\\ntree(s) described in FILE. If no use-specified target\\ntopologies are given, then a summary topology will be\\nused as the target. Use the '-s' or '--summary-target'\\nto specify the type of summary tree to use."
    summary_target: "Construct and summarize support and other information\\nfrom the source trees to one of the following summary\\ntopologies:\\n- 'consensus'\\nA consensus tree. The minimum frequency\\nthreshold of clades to be included can be\\nspecified using the '-f' or '--min-clade-freq'\\nflags. This is the DEFAULT if a user- specified\\ntarget tree is not given through the '-t' or '--\\ntarget-tree-filepath' options.\\n- 'mcct'\\nThe maximum clade credibility tree. The tree\\nfrom the source set that maximizes the *product*\\nof clade posterior probabilities.\\n- 'msct'\\nThe maximum sum of clade credibilities tree. The\\ntree from the source set that maximizes the\\n*sum* of clade posterior probabilities."
    _mincladefreq_: "#.##, --min-clade-freq #.##, --min-freq #.##, --min-split-freq #.##, --min-consensus-freq #.##\\nMinimum frequency or probability for a clade or a\\nsplit to be included in the summary target trees. If\\nuser-defined or non-consensus trees are specified as\\nsummary targets and a explicit value is provided for\\nthis argument, then clades with support values below\\nthis threshold will be collapsed. If a consensus tree\\nsummary target is specified, then clades with support\\nvalues below this threshold will not be included, and\\nthis threshold takes on a default value of greater\\nthan 0.5 if not explicitly specified."
    allow_unknown_target_tree_tax_a: "Do not fail with error if target tree(s) have taxa not\\npreviously encountered in source trees or defined in\\nthe taxon discovery file."
    root_target_at_out_group: "Root target tree(s) using specified taxon as outgroup."
    root_target_at_midpoint: "Root target tree(s) at midpoint."
    set_out_group: "Rotate the target trees such the specified taxon is in\\nthe outgroup position, but do not explicitly change\\nthe target tree rooting."
    set_edges: "Set the edge lengths of the target or summary trees\\nbased on the specified summarization STRATEGY:\\n- 'mean-length'\\nEdge lengths will be set to the mean of the\\nlengths of the corresponding split or clade in\\nthe source trees.\\n- 'median-length'\\nEdge lengths will be set to the median of the\\nlengths of the corresponding split or clade in\\nthe source trees.\\n- 'mean-age'\\nEdge lengths will be adjusted so that the age of\\nsubtended nodes will be equal to the mean age of\\nthe corresponding split or clade in the source\\ntrees. Source trees will need to to be\\nultrametric for this option.\\n- 'median-age'\\nEdge lengths will be adjusted so that the age of\\nsubtended nodes will be equal to the median age\\nof the corresponding split or clade in the\\nsource trees. Source trees will need to to be\\nultrametric for this option.\\n- support\\nEdge lengths will be set to the support value\\nfor the split represented by the edge.\\n- 'keep'\\nDo not change the existing edge lengths. This is\\nthe DEFAULT if target tree(s) are sourced from\\nan external file using the '-t' or '--target-\\ntree-filepath' option\\n- 'clear'\\nEdge lengths will be cleared from the target\\ntrees if they are present.\\nNote the default settings varies according to the\\nfollowing, in order of preference:\\n(1) If target trees are specified using the '-t' or\\n'--target-tree-filepath' option, then the default edge\\nsummarization strategy is: 'keep'.\\n(2) If target trees are not specified, but the\\n'--summarize-node-ages' option is specified,\\nthen the default edge summarization strategy is:\\n'mean-age'.\\n(3) If no target trees are specified and the\\nnode ages are NOT specified to be summarized,\\nthen the default edge summarization strategy is:\\n'mean-length'."
    force_minimum_edge_length: "(If setting edge lengths) force all edges to be at\\nleast this length."
    collapse_negative_edges: "(If setting edge lengths) force parent node ages to be\\nat least as old as its oldest child when summarizing\\nnode ages."
    summarize_node_ages: "Assume that source trees are ultrametic and summarize\\nnode ages (distances from tips)."
    labels: "Set the node labels of the summary or target tree(s):\\n- 'support'\\nNode labels will be set to the support value for\\nthe clade represented by the node. This is the\\nDEFAULT.\\n- 'keep'\\nDo not change the existing node labels.\\n- 'clear'\\nNode labels will be cleared from the target\\ntrees if they are present."
    suppress_annotations: "Do NOT annotate nodes and edges with any summarization\\ninformation metadata such as.support values, edge\\nlength and/or node age summary statistcs, etc."
    percentages: "Indicate branch support as percentages (otherwise,\\nwill report as proportions by default)."
    _decimals_number: "#, --decimals #    Number of decimal places in indication of support\\nvalues (default: 8)."
    output_tree_file_path: "Path to output file (if not specified, will print to\\nstandard output)."
    output_tree_format: "Format of the output tree file (if not specifed,\\ndefaults to input format, if this has been explicitly\\nspecified, or 'nexus' otherwise)."
    extended_output: "If specified, extended summarization information will\\nbe generated, consisting of the following files:\\n- '<PREFIX>.topologies.trees'\\nA collection of topologies found in the sources\\nreported with their associated posterior\\nprobabilities as metadata annotations.\\n- '<PREFIX>.bipartitions.trees'\\nA collection of bipartitions, each represented\\nas a tree, with associated information as\\nmetadataannotations.\\n- '<PREFIX>.bipartitions.tsv'\\nTable listing bipartitions as a group pattern as\\nthe key column, and information regarding each\\nthe bipartitions as the remaining columns.\\n- '<PREFIX>.edge-lengths.tsv'\\nList of bipartitions and corresponding edge\\nlengths. Only generated if edge lengths are\\nsummarized.\\n- '<PREFIX>.node-ages.tsv'\\nList of bipartitions and corresponding ages.\\nOnly generated if node ages are summarized."
    no_tax_a_block: "When writing NEXUS format output, do not include a\\ntaxa block in the output treefile (otherwise will\\ncreate taxa block by default)."
    no_analysis_metainformation: "Do not include meta-information describing the\\nsummarization parameters and execution details."
    additional_comments: "Additional comments to be added to the summary file."
    replace: "Replace/overwrite output file without asking if it\\nalready exists."
    maximum_multiprocessing: "Run in parallel mode using as many processors as\\navailable, up to the number of sources."
    multiprocessing: "Run in parallel mode with up to a maximum of NUM-\\nPROCESSES processes ('max' or '#' means to run in as\\nmany processes as there are cores on the local\\nmachine; i.e., same as specifying '-M' or '--maximum-\\nmultiprocessing')."
    log_frequency: "Tree processing progress logging frequency (default:\\n500; set to 0 to suppress)."
    quiet: "Suppress ALL logging, progress and feedback messages."
    ignore_missing_support: "Ignore missing support tree files (note that at least\\none must exist)."
    usage_examples: "Show usage examples of program and exit."
    describe: "Show information regarding your DendroPy and Python\\ninstallations and exit.\\n"
    tree_file_path: "Source(s) of trees to summarize. At least one valid\\nsource of trees must be provided. Use '-' to specify\\nreading from standard input (note that this requires\\nthe input file format to be explicitly set using the '\\n--source-format' option)."
  }
  output {
    File out_stdout = stdout()
    File out_output_tree_file_path = "${in_output_tree_file_path}"
    File out_replace = "${in_replace}"
  }
}