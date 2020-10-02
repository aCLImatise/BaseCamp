class: CommandLineTool
id: format_tree_and_trait_table.py.cwl
inputs:
- id: in_verbose
  doc: "Print information during execution -- useful for\ndebugging [default: False]"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_tree_to_trait_mapping
  doc: "a two-column, tab-delimited text file mapping\nidentifiers in the tree(column\
    \ 1) to identifiers in\nthe trait table (column 2). If supplied, the\nidentifiers\
    \ in the trait table will be converted to\nmatch the identifiers in the tree.\
    \ (This mapping does\nnot need to be supplied if the tree and trait table\nalready\
    \ use a common set of identifiers.) [default:\nnone]"
  type: File
  inputBinding:
    prefix: --tree_to_trait_mapping
- id: in_output_dir
  doc: 'the output directory [default: ./formatted/]'
  type: Directory
  inputBinding:
    prefix: --output_dir
- id: in_input_table_delimiter
  doc: "The character delimiting fields in the input trait\ntable. Valid choices are:tab,space,comma\
    \ [default:\ntab]"
  type: string
  inputBinding:
    prefix: --input_table_delimiter
- id: in_output_table_delimiter
  doc: "The character delimiting fields in the output trait\ntable. Valid choices\
    \ are:tab,space,comma [default:\ntab]"
  type: string
  inputBinding:
    prefix: --output_table_delimiter
- id: in_suppress_bifurcating
  doc: "If set, don't ensure that tree is fully bifurcating.\n[default: False]"
  type: boolean
  inputBinding:
    prefix: --suppress_bifurcating
- id: in_convert_to_nexus
  doc: "Convert tree to NEXUS format, including a translate\nblock mapping tip names\
    \ to numbers. [default: False]"
  type: boolean
  inputBinding:
    prefix: --convert_to_nexus
- id: in_convert_values_to_ints
  doc: "Convert the values for each character state to\nintegers. [default: False]"
  type: boolean
  inputBinding:
    prefix: --convert_values_to_ints
- id: in_no_minimum_branch_length
  doc: "If set, don't ensure all branches have at least a\nsmall but non-zero branchlength.\
    \ [default: False]"
  type: boolean
  inputBinding:
    prefix: --no_minimum_branch_length
- id: in_supress_tree_filter
  doc: "If set, don't filter out tree tips that aren't listed\nin the trait table\
    \ [default: False]"
  type: boolean
  inputBinding:
    prefix: --supress_tree_filter
- id: in_supress_table_filter
  doc: "If set, don't filter out trait table entries that\naren't listed in the tree\
    \ [default: False]"
  type: boolean
  inputBinding:
    prefix: --supress_table_filter
- id: in_add_branch_length_to_root
  doc: "Add a short branch to the root node (this is required\nby some phylogeny programs).\
    \  The length of the branch\nis determined by the min_branch_length option\n[default:\
    \ False]"
  type: boolean
  inputBinding:
    prefix: --add_branch_length_to_root
- id: in_limit_tree_to_otus_fp
  doc: "Will prune the reference tree to contain only those\ntips that are within\
    \ the given OTU table"
  type: string
  inputBinding:
    prefix: --limit_tree_to_otus_fp
- id: in_input_tree
  doc: the input tree (Newick format) [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_tree
- id: in_input_trait_table
  doc: "the input trait table (QIIME OTU table format)\n[REQUIRED]\n"
  type: string
  inputBinding:
    prefix: --input_trait_table
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: 'the output directory [default: ./formatted/]'
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- format_tree_and_trait_table.py
