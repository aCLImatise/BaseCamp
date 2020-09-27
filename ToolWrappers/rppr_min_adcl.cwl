class: CommandLineTool
id: rppr_min_adcl.cwl
inputs:
- id: in_point_mass
  doc: Treat every pquery as a point mass concentrated on the highest-weight placement.
  type: boolean
  inputBinding:
    prefix: --point-mass
- id: in_pp
  doc: Use posterior probability for the weight.
  type: boolean
  inputBinding:
    prefix: --pp
- id: in_reference_package_path
  doc: Reference package path.
  type: boolean
  inputBinding:
    prefix: -c
- id: in_specify_filename_write
  doc: Specify the filename to write to.
  type: boolean
  inputBinding:
    prefix: -o
- id: in_out_dir
  doc: Specify the directory to write files to.
  type: boolean
  inputBinding:
    prefix: --out-dir
- id: in_prefix
  doc: Specify a string to be prepended to filenames.
  type: boolean
  inputBinding:
    prefix: --prefix
- id: in_no_csv
  doc: Output the results as a padded matrix instead of csv.
  type: boolean
  inputBinding:
    prefix: --no-csv
- id: in_node_numbers
  doc: Put the node numbers in where the bootstraps usually go.
  type: boolean
  inputBinding:
    prefix: --node-numbers
- id: in_seed
  doc: Set the random seed, an integer > 0. Default is 1.
  type: boolean
  inputBinding:
    prefix: --seed
- id: in_specified_write_output
  doc: If specified, write progress output to stderr.
  type: boolean
  inputBinding:
    prefix: -v
- id: in_specified_path_write
  doc: If specified, the path to write the trimmed tree to.
  type: boolean
  inputBinding:
    prefix: -t
- id: in_leaves
  doc: The maximum number of leaves to keep in the tree.
  type: boolean
  inputBinding:
    prefix: --leaves
- id: in_max_a_dcl
  doc: The maximum ADCL that a solution can have.
  type: boolean
  inputBinding:
    prefix: --max-adcl
- id: in_algorithm
  doc: Which algorithm to use to prune leaves. Choices are 'greedy', 'full', 'force',
    and 'pam'. Default full.
  type: boolean
  inputBinding:
    prefix: --algorithm
- id: in_all_ad_cls_file
  doc: If specified, write out a csv file containing every intermediate computed ADCL.
  type: File
  inputBinding:
    prefix: --all-adcls-file
- id: in_log
  doc: If specified with the full algorithm, write out a csv file containing solutions
    at every internal node.
  type: File
  inputBinding:
    prefix: --log
- id: in_always_include
  doc: If specified, the leaf names read from the provided file will not be trimmed.
  type: boolean
  inputBinding:
    prefix: --always-include
- id: in_leaf_mass
  doc: Fraction of mass to be distributed uniformly across leaves. Default 0.
  type: boolean
  inputBinding:
    prefix: --leaf-mass
- id: in_help
  doc: Display this list of options
  type: boolean
  inputBinding:
    prefix: --help
- id: in_min_a_dcl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_place_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_all_ad_cls_file
  doc: If specified, write out a csv file containing every intermediate computed ADCL.
  type: File
  outputBinding:
    glob: $(inputs.in_all_ad_cls_file)
- id: out_log
  doc: If specified with the full algorithm, write out a csv file containing solutions
    at every internal node.
  type: File
  outputBinding:
    glob: $(inputs.in_log)
cwlVersion: v1.1
baseCommand:
- rppr
- min_adcl
