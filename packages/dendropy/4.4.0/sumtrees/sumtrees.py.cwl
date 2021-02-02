class: CommandLineTool
id: sumtrees.py.cwl
inputs:
- id: in_source_format
  doc: "Format of all input trees (defaults to handling either\nNEXUS or NEWICK through\
    \ inspection; it is more\nefficient to explicitly specify the format if it is\n\
    known)."
  type: string
  inputBinding:
    prefix: --source-format
- id: in_burnin
  doc: "Number of trees to skip from the beginning of *each*\ntree file when counting\
    \ support (default: 0)."
  type: long
  inputBinding:
    prefix: --burnin
- id: in_force_rooted
  doc: Treat source trees as rooted.
  type: boolean
  inputBinding:
    prefix: --force-rooted
- id: in_force_unrooted
  doc: Treat source trees as unrooted.
  type: boolean
  inputBinding:
    prefix: --force-unrooted
- id: in_weighted_trees
  doc: "Use weights of trees (as indicated by '[&W m/n]'\ncomment token) to weight\
    \ contribution of splits found\non each tree to overall split frequencies."
  type: boolean
  inputBinding:
    prefix: --weighted-trees
- id: in_preserve_underscores
  doc: "Do not convert unprotected (unquoted) underscores to\nspaces when reading\
    \ NEXUS/NEWICK format trees."
  type: boolean
  inputBinding:
    prefix: --preserve-underscores
- id: in_ultrametric_ity_precision
  doc: "Precision to use when validating ultrametricity\n(default: 1e-05; specify\
    \ '0' to disable validation)."
  type: double
  inputBinding:
    prefix: --ultrametricity-precision
- id: in_tax_on_names_file_path
  doc: "Path to file listing all the taxon names or labels\nthat will be found across\
    \ the entire set of source\ntrees. This file should be a plain text file with\
    \ a\nsingle name list on each line. This file is only read\nwhen multiprocessing\
    \ ('-M' or '-m') is requested. When\nmultiprocessing using the '-M' or '-m' options,\
    \ all\ntaxon names need to be defined in advance of any\nactual tree analysis.\
    \ By default this is done by\nreading the first tree in the first tree source\
    \ and\nextracting the taxon names. At best, this is,\ninefficient, as it involves\
    \ an extraneous reading of\nthe tree. At worst, this can be errorneous, if the\n\
    first tree does not contain all the taxa. Explicitly\nproviding the taxon names\
    \ via this option can avoid\nthese issues."
  type: File
  inputBinding:
    prefix: --taxon-names-filepath
- id: in_tip_ages_file_path
  doc: "Path to file providing ages (i.e., time from present)\nof tips. For format\
    \ of this file, see '--tip-age-\nformat'. If not specified, or for any taxon omitted\n\
    from the data, an age of 0.0 will be assumed."
  type: File
  inputBinding:
    prefix: --tip-ages-filepath
- id: in_tip_ages_format
  doc: "Format of the tip date data (default: 'tsv'):\n- 'tsv'\nA tab-delimited file.\
    \ This should consist of two\ncolumns separated by tabs. The first column\nlists\
    \ the taxon labels (matching the taxon label\nof the input trees EXACTLY) and\
    \ the second\ncolumn lists the ages of the corresponding tips.\n- 'csv'\nA comma-delimited\
    \ file. This should consist of\ntwo columns separated by commas. The first\ncolumn\
    \ lists the taxon labels (matching the\ntaxon label of the input trees EXACTLY)\
    \ and the\nsecond column lists the ages of the\ncorresponding tips.\n- 'json'\n\
    A JSON file. This should specify a single\ndictionary at the top-level with keys\
    \ being\ntaxon labels (matching the taxon labels of the\ninput trees EXACTLY)\
    \ and values being the ages\nof the corresponding tips."
  type: File
  inputBinding:
    prefix: --tip-ages-format
- id: in_no_trim_tip_age_labels
  doc: "By default, whitespace will be trimmed from the labels\nfound in the tip ages\
    \ data source. Specifing this\noption suppresses this."
  type: boolean
  inputBinding:
    prefix: --no-trim-tip-age-labels
- id: in_target_tree_file_path
  doc: "Summarize support and other information from the\nsource trees to topology\
    \ or topologies given by the\ntree(s) described in FILE. If no use-specified target\n\
    topologies are given, then a summary topology will be\nused as the target. Use\
    \ the '-s' or '--summary-target'\nto specify the type of summary tree to use."
  type: File
  inputBinding:
    prefix: --target-tree-filepath
- id: in_summary_target
  doc: "Construct and summarize support and other information\nfrom the source trees\
    \ to one of the following summary\ntopologies:\n- 'consensus'\nA consensus tree.\
    \ The minimum frequency\nthreshold of clades to be included can be\nspecified\
    \ using the '-f' or '--min-clade-freq'\nflags. This is the DEFAULT if a user-\
    \ specified\ntarget tree is not given through the '-t' or '--\ntarget-tree-filepath'\
    \ options.\n- 'mcct'\nThe maximum clade credibility tree. The tree\nfrom the source\
    \ set that maximizes the *product*\nof clade posterior probabilities.\n- 'msct'\n\
    The maximum sum of clade credibilities tree. The\ntree from the source set that\
    \ maximizes the\n*sum* of clade posterior probabilities."
  type: long
  inputBinding:
    prefix: --summary-target
- id: in__mincladefreq_
  doc: "#.##, --min-clade-freq #.##, --min-freq #.##, --min-split-freq #.##, --min-consensus-freq\
    \ #.##\nMinimum frequency or probability for a clade or a\nsplit to be included\
    \ in the summary target trees. If\nuser-defined or non-consensus trees are specified\
    \ as\nsummary targets and a explicit value is provided for\nthis argument, then\
    \ clades with support values below\nthis threshold will be collapsed. If a consensus\
    \ tree\nsummary target is specified, then clades with support\nvalues below this\
    \ threshold will not be included, and\nthis threshold takes on a default value\
    \ of greater\nthan 0.5 if not explicitly specified."
  type: boolean
  inputBinding:
    prefix: -f
- id: in_allow_unknown_target_tree_tax_a
  doc: "Do not fail with error if target tree(s) have taxa not\npreviously encountered\
    \ in source trees or defined in\nthe taxon discovery file."
  type: boolean
  inputBinding:
    prefix: --allow-unknown-target-tree-taxa
- id: in_root_target_at_out_group
  doc: Root target tree(s) using specified taxon as outgroup.
  type: string
  inputBinding:
    prefix: --root-target-at-outgroup
- id: in_root_target_at_midpoint
  doc: Root target tree(s) at midpoint.
  type: boolean
  inputBinding:
    prefix: --root-target-at-midpoint
- id: in_set_out_group
  doc: "Rotate the target trees such the specified taxon is in\nthe outgroup position,\
    \ but do not explicitly change\nthe target tree rooting."
  type: string
  inputBinding:
    prefix: --set-outgroup
- id: in_set_edges
  doc: "Set the edge lengths of the target or summary trees\nbased on the specified\
    \ summarization STRATEGY:\n- 'mean-length'\nEdge lengths will be set to the mean\
    \ of the\nlengths of the corresponding split or clade in\nthe source trees.\n\
    - 'median-length'\nEdge lengths will be set to the median of the\nlengths of the\
    \ corresponding split or clade in\nthe source trees.\n- 'mean-age'\nEdge lengths\
    \ will be adjusted so that the age of\nsubtended nodes will be equal to the mean\
    \ age of\nthe corresponding split or clade in the source\ntrees. Source trees\
    \ will need to to be\nultrametric for this option.\n- 'median-age'\nEdge lengths\
    \ will be adjusted so that the age of\nsubtended nodes will be equal to the median\
    \ age\nof the corresponding split or clade in the\nsource trees. Source trees\
    \ will need to to be\nultrametric for this option.\n- support\nEdge lengths will\
    \ be set to the support value\nfor the split represented by the edge.\n- 'keep'\n\
    Do not change the existing edge lengths. This is\nthe DEFAULT if target tree(s)\
    \ are sourced from\nan external file using the '-t' or '--target-\ntree-filepath'\
    \ option\n- 'clear'\nEdge lengths will be cleared from the target\ntrees if they\
    \ are present.\nNote the default settings varies according to the\nfollowing,\
    \ in order of preference:\n(1) If target trees are specified using the '-t' or\n\
    '--target-tree-filepath' option, then the default edge\nsummarization strategy\
    \ is: 'keep'.\n(2) If target trees are not specified, but the\n'--summarize-node-ages'\
    \ option is specified,\nthen the default edge summarization strategy is:\n'mean-age'.\n\
    (3) If no target trees are specified and the\nnode ages are NOT specified to be\
    \ summarized,\nthen the default edge summarization strategy is:\n'mean-length'."
  type: long
  inputBinding:
    prefix: --set-edges
- id: in_force_minimum_edge_length
  doc: "(If setting edge lengths) force all edges to be at\nleast this length."
  type: long
  inputBinding:
    prefix: --force-minimum-edge-length
- id: in_collapse_negative_edges
  doc: "(If setting edge lengths) force parent node ages to be\nat least as old as\
    \ its oldest child when summarizing\nnode ages."
  type: boolean
  inputBinding:
    prefix: --collapse-negative-edges
- id: in_summarize_node_ages
  doc: "Assume that source trees are ultrametic and summarize\nnode ages (distances\
    \ from tips)."
  type: boolean
  inputBinding:
    prefix: --summarize-node-ages
- id: in_labels
  doc: "Set the node labels of the summary or target tree(s):\n- 'support'\nNode labels\
    \ will be set to the support value for\nthe clade represented by the node. This\
    \ is the\nDEFAULT.\n- 'keep'\nDo not change the existing node labels.\n- 'clear'\n\
    Node labels will be cleared from the target\ntrees if they are present."
  type: string
  inputBinding:
    prefix: --labels
- id: in_suppress_annotations
  doc: "Do NOT annotate nodes and edges with any summarization\ninformation metadata\
    \ such as.support values, edge\nlength and/or node age summary statistcs, etc."
  type: boolean
  inputBinding:
    prefix: --suppress-annotations
- id: in_percentages
  doc: "Indicate branch support as percentages (otherwise,\nwill report as proportions\
    \ by default)."
  type: boolean
  inputBinding:
    prefix: --percentages
- id: in__decimals_number
  doc: "#, --decimals #    Number of decimal places in indication of support\nvalues\
    \ (default: 8)."
  type: boolean
  inputBinding:
    prefix: -d
- id: in_output_tree_file_path
  doc: "Path to output file (if not specified, will print to\nstandard output)."
  type: File
  inputBinding:
    prefix: --output-tree-filepath
- id: in_output_tree_format
  doc: "Format of the output tree file (if not specifed,\ndefaults to input format,\
    \ if this has been explicitly\nspecified, or 'nexus' otherwise)."
  type: string
  inputBinding:
    prefix: --output-tree-format
- id: in_extended_output
  doc: "If specified, extended summarization information will\nbe generated, consisting\
    \ of the following files:\n- '<PREFIX>.topologies.trees'\nA collection of topologies\
    \ found in the sources\nreported with their associated posterior\nprobabilities\
    \ as metadata annotations.\n- '<PREFIX>.bipartitions.trees'\nA collection of bipartitions,\
    \ each represented\nas a tree, with associated information as\nmetadataannotations.\n\
    - '<PREFIX>.bipartitions.tsv'\nTable listing bipartitions as a group pattern as\n\
    the key column, and information regarding each\nthe bipartitions as the remaining\
    \ columns.\n- '<PREFIX>.edge-lengths.tsv'\nList of bipartitions and corresponding\
    \ edge\nlengths. Only generated if edge lengths are\nsummarized.\n- '<PREFIX>.node-ages.tsv'\n\
    List of bipartitions and corresponding ages.\nOnly generated if node ages are\
    \ summarized."
  type: string
  inputBinding:
    prefix: --extended-output
- id: in_no_tax_a_block
  doc: "When writing NEXUS format output, do not include a\ntaxa block in the output\
    \ treefile (otherwise will\ncreate taxa block by default)."
  type: boolean
  inputBinding:
    prefix: --no-taxa-block
- id: in_no_analysis_metainformation
  doc: "Do not include meta-information describing the\nsummarization parameters and\
    \ execution details."
  type: boolean
  inputBinding:
    prefix: --no-analysis-metainformation
- id: in_additional_comments
  doc: Additional comments to be added to the summary file.
  type: File
  inputBinding:
    prefix: --additional-comments
- id: in_replace
  doc: "Replace/overwrite output file without asking if it\nalready exists."
  type: File
  inputBinding:
    prefix: --replace
- id: in_maximum_multiprocessing
  doc: "Run in parallel mode using as many processors as\navailable, up to the number\
    \ of sources."
  type: boolean
  inputBinding:
    prefix: --maximum-multiprocessing
- id: in_multiprocessing
  doc: "Run in parallel mode with up to a maximum of NUM-\nPROCESSES processes ('max'\
    \ or '#' means to run in as\nmany processes as there are cores on the local\n\
    machine; i.e., same as specifying '-M' or '--maximum-\nmultiprocessing')."
  type: long
  inputBinding:
    prefix: --multiprocessing
- id: in_log_frequency
  doc: "Tree processing progress logging frequency (default:\n500; set to 0 to suppress)."
  type: long
  inputBinding:
    prefix: --log-frequency
- id: in_quiet
  doc: Suppress ALL logging, progress and feedback messages.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_ignore_missing_support
  doc: "Ignore missing support tree files (note that at least\none must exist)."
  type: boolean
  inputBinding:
    prefix: --ignore-missing-support
- id: in_usage_examples
  doc: Show usage examples of program and exit.
  type: boolean
  inputBinding:
    prefix: --usage-examples
- id: in_describe
  doc: "Show information regarding your DendroPy and Python\ninstallations and exit.\n"
  type: boolean
  inputBinding:
    prefix: --describe
- id: in_tree_file_path
  doc: "Source(s) of trees to summarize. At least one valid\nsource of trees must\
    \ be provided. Use '-' to specify\nreading from standard input (note that this\
    \ requires\nthe input file format to be explicitly set using the '\n--source-format'\
    \ option)."
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_tree_file_path
  doc: "Path to output file (if not specified, will print to\nstandard output)."
  type: File
  outputBinding:
    glob: $(inputs.in_output_tree_file_path)
- id: out_replace
  doc: "Replace/overwrite output file without asking if it\nalready exists."
  type: File
  outputBinding:
    glob: $(inputs.in_replace)
cwlVersion: v1.1
baseCommand:
- sumtrees.py
