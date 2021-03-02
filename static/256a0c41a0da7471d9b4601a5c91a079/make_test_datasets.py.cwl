class: CommandLineTool
id: make_test_datasets.py.cwl
inputs:
- id: in_verbose
  doc: "Print information during execution -- useful for\ndebugging [default: False]"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_output_dir
  doc: "the output directory.  Duplicate trees, trait tables,\nexpected values and\
    \ prediction files will be saved\nhere.[default:./test_datasets/]"
  type: Directory?
  inputBinding:
    prefix: --output_dir
- id: in_min_dist
  doc: "the minimum phylogenetic distance to use with the\nholdout method, if applicable.\
    \  Usually\n0.0.[default:0.0]"
  type: double?
  inputBinding:
    prefix: --min_dist
- id: in_suppress_tree_modification
  doc: "If passed, modify only the trait table, not the tree .\n[default: False]"
  type: boolean?
  inputBinding:
    prefix: --suppress_tree_modification
- id: in_dist_increment
  doc: "the phylogenetic distance increment to use with the\nholdout method, if applicable.[default:0.03]"
  type: double?
  inputBinding:
    prefix: --dist_increment
- id: in_max_dist
  doc: "the maximum phylogenetic distance to use with the\nholdout method, if applicable.[default:0.45]"
  type: long?
  inputBinding:
    prefix: --max_dist
- id: in_limit_to_tips
  doc: "if specified, limit test dataset generation to\nspecified tips (comma-separated).[default:]"
  type: string?
  inputBinding:
    prefix: --limit_to_tips
- id: in_method
  doc: "The test method to use in generating test data.  Valid\nchoices are:exclude_tips_by_distance,randomize_tip_lab\n\
    els_by_distance,collapse_tree_by_distance [default:\nexclude_tips_by_distance]"
  type: string?
  inputBinding:
    prefix: --method
- id: in_input_trait_table
  doc: the input trait table. [REQUIRED]
  type: string?
  inputBinding:
    prefix: --input_trait_table
- id: in_input_tree
  doc: "the input tree in Newick format [REQUIRED]\n"
  type: string?
  inputBinding:
    prefix: --input_tree
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "the output directory.  Duplicate trees, trait tables,\nexpected values and\
    \ prediction files will be saved\nhere.[default:./test_datasets/]"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- make_test_datasets.py
