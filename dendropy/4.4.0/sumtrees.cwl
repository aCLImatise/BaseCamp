class: CommandLineTool
id: sumtrees.py.cwl
inputs:
- id: tree_file_path
  doc: Source(s) of trees to summarize. At least one valid source of trees must be
    provided. Use '-' to specify reading from standard input (note that this requires
    the input file format to be explicitly set using the ' --source-format' option).
  type: string
  inputBinding:
    position: 0
- id: source_format
  doc: Format of all input trees (defaults to handling either NEXUS or NEWICK through
    inspection; it is more efficient to explicitly specify the format if it is known).
  type: string
  inputBinding:
    prefix: --source-format
- id: burnin
  doc: 'Number of trees to skip from the beginning of *each* tree file when counting
    support (default: 0).'
  type: string
  inputBinding:
    prefix: --burnin
- id: force_rooted
  doc: Treat source trees as rooted.
  type: boolean
  inputBinding:
    prefix: --force-rooted
- id: force_unrooted
  doc: Treat source trees as unrooted.
  type: boolean
  inputBinding:
    prefix: --force-unrooted
- id: weighted_trees
  doc: Use weights of trees (as indicated by '[&W m/n]' comment token) to weight contribution
    of splits found on each tree to overall split frequencies.
  type: boolean
  inputBinding:
    prefix: --weighted-trees
- id: preserve_underscores
  doc: Do not convert unprotected (unquoted) underscores to spaces when reading NEXUS/NEWICK
    format trees.
  type: boolean
  inputBinding:
    prefix: --preserve-underscores
- id: ultrametric_ity_precision
  doc: "Precision to use when validating ultrametricity (default: 1e-05; specify '0'\
    \ to disable validation)."
  type: string
  inputBinding:
    prefix: --ultrametricity-precision
- id: tax_on_names_file_path
  doc: Path to file listing all the taxon names or labels that will be found across
    the entire set of source trees. This file should be a plain text file with a single
    name list on each line. This file is only read when multiprocessing ('-M' or '-m')
    is requested. When multiprocessing using the '-M' or '-m' options, all taxon names
    need to be defined in advance of any actual tree analysis. By default this is
    done by reading the first tree in the first tree source and extracting the taxon
    names. At best, this is, inefficient, as it involves an extraneous reading of
    the tree. At worst, this can be errorneous, if the first tree does not contain
    all the taxa. Explicitly providing the taxon names via this option can avoid these
    issues.
  type: File
  inputBinding:
    prefix: --taxon-names-filepath
- id: tip_ages_file_path
  doc: Path to file providing ages (i.e., time from present) of tips. For format of
    this file, see '--tip-age- format'. If not specified, or for any taxon omitted
    from the data, an age of 0.0 will be assumed.
  type: File
  inputBinding:
    prefix: --tip-ages-filepath
- id: tip_ages_format
  doc: "Format of the tip date data (default: 'tsv'): - 'tsv' A tab-delimited file.\
    \ This should consist of two columns separated by tabs. The first column lists\
    \ the taxon labels (matching the taxon label of the input trees EXACTLY) and the\
    \ second column lists the ages of the corresponding tips. - 'csv' A comma-delimited\
    \ file. This should consist of two columns separated by commas. The first column\
    \ lists the taxon labels (matching the taxon label of the input trees EXACTLY)\
    \ and the second column lists the ages of the corresponding tips. - 'json' A JSON\
    \ file. This should specify a single dictionary at the top-level with keys being\
    \ taxon labels (matching the taxon labels of the input trees EXACTLY) and values\
    \ being the ages of the corresponding tips."
  type: string
  inputBinding:
    prefix: --tip-ages-format
- id: no_trim_tip_age_labels
  doc: By default, whitespace will be trimmed from the labels found in the tip ages
    data source. Specifing this option suppresses this.
  type: boolean
  inputBinding:
    prefix: --no-trim-tip-age-labels
- id: target_tree_file_path
  doc: Summarize support and other information from the source trees to topology or
    topologies given by the tree(s) described in FILE. If no use-specified target
    topologies are given, then a summary topology will be used as the target. Use
    the '-s' or '--summary-target' to specify the type of summary tree to use.
  type: File
  inputBinding:
    prefix: --target-tree-filepath
- id: summary_target
  doc: "Construct and summarize support and other information from the source trees\
    \ to one of the following summary topologies: - 'consensus' A consensus tree.\
    \ The minimum frequency threshold of clades to be included can be specified using\
    \ the '-f' or '--min-clade-freq' flags. This is the DEFAULT if a user- specified\
    \ target tree is not given through the '-t' or '-- target-tree-filepath' options.\
    \ - 'mcct' The maximum clade credibility tree. The tree from the source set that\
    \ maximizes the *product* of clade posterior probabilities. - 'msct' The maximum\
    \ sum of clade credibilities tree. The tree from the source set that maximizes\
    \ the *sum* of clade posterior probabilities."
  type: string
  inputBinding:
    prefix: --summary-target
- id: f
  doc: '#.##, --min-clade-freq #.##, --min-freq #.##, --min-split-freq #.##, --min-consensus-freq
    #.## Minimum frequency or probability for a clade or a split to be included in
    the summary target trees. If user-defined or non-consensus trees are specified
    as summary targets and a explicit value is provided for this argument, then clades
    with support values below this threshold will be collapsed. If a consensus tree
    summary target is specified, then clades with support values below this threshold
    will not be included, and this threshold takes on a default value of greater than
    0.5 if not explicitly specified.'
  type: boolean
  inputBinding:
    prefix: -f
- id: allow_unknown_target_tree_tax_a
  doc: Do not fail with error if target tree(s) have taxa not previously encountered
    in source trees or defined in the taxon discovery file.
  type: boolean
  inputBinding:
    prefix: --allow-unknown-target-tree-taxa
- id: root_target_at_out_group
  doc: Root target tree(s) using specified taxon as outgroup.
  type: string
  inputBinding:
    prefix: --root-target-at-outgroup
- id: root_target_at_midpoint
  doc: Root target tree(s) at midpoint.
  type: boolean
  inputBinding:
    prefix: --root-target-at-midpoint
- id: set_out_group
  doc: Rotate the target trees such the specified taxon is in the outgroup position,
    but do not explicitly change the target tree rooting.
  type: string
  inputBinding:
    prefix: --set-outgroup
- id: set_edges
  doc: "Set the edge lengths of the target or summary trees based on the specified\
    \ summarization STRATEGY: - 'mean-length' Edge lengths will be set to the mean\
    \ of the lengths of the corresponding split or clade in the source trees. - 'median-length'\
    \ Edge lengths will be set to the median of the lengths of the corresponding split\
    \ or clade in the source trees. - 'mean-age' Edge lengths will be adjusted so\
    \ that the age of subtended nodes will be equal to the mean age of the corresponding\
    \ split or clade in the source trees. Source trees will need to to be ultrametric\
    \ for this option. - 'median-age' Edge lengths will be adjusted so that the age\
    \ of subtended nodes will be equal to the median age of the corresponding split\
    \ or clade in the source trees. Source trees will need to to be ultrametric for\
    \ this option. - support Edge lengths will be set to the support value for the\
    \ split represented by the edge. - 'keep' Do not change the existing edge lengths.\
    \ This is the DEFAULT if target tree(s) are sourced from an external file using\
    \ the '-t' or '--target- tree-filepath' option - 'clear' Edge lengths will be\
    \ cleared from the target trees if they are present. Note the default settings\
    \ varies according to the  following, in order of preference:                \
    \   (1) If target trees are specified using the '-t' or  '--target-tree-filepath'\
    \ option, then the default edge  summarization strategy is: 'keep'.  (2) If target\
    \ trees are not specified, but the  '--summarize-node-ages' option is specified,\
    \  then the default edge summarization strategy is:  'mean-age'.  (3) If no target\
    \ trees are specified and the  node ages are NOT specified to be summarized, \
    \ then the default edge summarization strategy is:  'mean-length'. "
  type: string
  inputBinding:
    prefix: --set-edges
- id: force_minimum_edge_length
  doc: (If setting edge lengths) force all edges to be at least this length.
  type: string
  inputBinding:
    prefix: --force-minimum-edge-length
- id: collapse_negative_edges
  doc: (If setting edge lengths) force parent node ages to be at least as old as its
    oldest child when summarizing node ages.
  type: boolean
  inputBinding:
    prefix: --collapse-negative-edges
- id: summarize_node_ages
  doc: Assume that source trees are ultrametic and summarize node ages (distances
    from tips).
  type: boolean
  inputBinding:
    prefix: --summarize-node-ages
- id: labels
  doc: "Set the node labels of the summary or target tree(s): - 'support' Node labels\
    \ will be set to the support value for the clade represented by the node. This\
    \ is the DEFAULT. - 'keep' Do not change the existing node labels. - 'clear' Node\
    \ labels will be cleared from the target trees if they are present."
  type: string
  inputBinding:
    prefix: --labels
- id: suppress_annotations
  doc: Do NOT annotate nodes and edges with any summarization information metadata
    such as.support values, edge length and/or node age summary statistcs, etc.
  type: boolean
  inputBinding:
    prefix: --suppress-annotations
- id: percentages
  doc: Indicate branch support as percentages (otherwise, will report as proportions
    by default).
  type: boolean
  inputBinding:
    prefix: --percentages
- id: d
  doc: '#, --decimals #    Number of decimal places in indication of support values
    (default: 8).'
  type: boolean
  inputBinding:
    prefix: -d
- id: output_tree_file_path
  doc: Path to output file (if not specified, will print to standard output).
  type: File
  inputBinding:
    prefix: --output-tree-filepath
- id: output_tree_format
  doc: Format of the output tree file (if not specifed, defaults to input format,
    if this has been explicitly specified, or 'nexus' otherwise).
  type: string
  inputBinding:
    prefix: --output-tree-format
- id: extended_output
  doc: "If specified, extended summarization information will be generated, consisting\
    \ of the following files: - '<PREFIX>.topologies.trees' A collection of topologies\
    \ found in the sources reported with their associated posterior probabilities\
    \ as metadata annotations. - '<PREFIX>.bipartitions.trees' A collection of bipartitions,\
    \ each represented as a tree, with associated information as metadataannotations.\
    \ - '<PREFIX>.bipartitions.tsv' Table listing bipartitions as a group pattern\
    \ as the key column, and information regarding each the bipartitions as the remaining\
    \ columns. - '<PREFIX>.edge-lengths.tsv' List of bipartitions and corresponding\
    \ edge lengths. Only generated if edge lengths are summarized. - '<PREFIX>.node-ages.tsv'\
    \ List of bipartitions and corresponding ages. Only generated if node ages are\
    \ summarized."
  type: string
  inputBinding:
    prefix: --extended-output
- id: no_tax_a_block
  doc: When writing NEXUS format output, do not include a taxa block in the output
    treefile (otherwise will create taxa block by default).
  type: boolean
  inputBinding:
    prefix: --no-taxa-block
- id: no_analysis_metainformation
  doc: Do not include meta-information describing the summarization parameters and
    execution details.
  type: boolean
  inputBinding:
    prefix: --no-analysis-metainformation
- id: additional_comments
  doc: Additional comments to be added to the summary file.
  type: string
  inputBinding:
    prefix: --additional-comments
- id: replace
  doc: Replace/overwrite output file without asking if it already exists.
  type: boolean
  inputBinding:
    prefix: --replace
- id: maximum_multiprocessing
  doc: Run in parallel mode using as many processors as available, up to the number
    of sources.
  type: boolean
  inputBinding:
    prefix: --maximum-multiprocessing
- id: multiprocessing
  doc: Run in parallel mode with up to a maximum of NUM- PROCESSES processes ('max'
    or '#' means to run in as many processes as there are cores on the local machine;
    i.e., same as specifying '-M' or '--maximum- multiprocessing').
  type: string
  inputBinding:
    prefix: --multiprocessing
- id: log_frequency
  doc: 'Tree processing progress logging frequency (default: 500; set to 0 to suppress).'
  type: string
  inputBinding:
    prefix: --log-frequency
- id: quiet
  doc: Suppress ALL logging, progress and feedback messages.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: ignore_missing_support
  doc: Ignore missing support tree files (note that at least one must exist).
  type: boolean
  inputBinding:
    prefix: --ignore-missing-support
- id: usage_examples
  doc: Show usage examples of program and exit.
  type: boolean
  inputBinding:
    prefix: --usage-examples
- id: describe
  doc: Show information regarding your DendroPy and Python installations and exit.
  type: boolean
  inputBinding:
    prefix: --describe
outputs: []
cwlVersion: v1.1
baseCommand:
- sumtrees.py
