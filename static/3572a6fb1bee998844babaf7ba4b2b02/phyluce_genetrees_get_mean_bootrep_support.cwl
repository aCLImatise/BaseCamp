class: CommandLineTool
id: phyluce_genetrees_get_mean_bootrep_support.cwl
inputs:
- id: in_trees
  doc: Tree file
  type: File?
  inputBinding:
    prefix: --trees
- id: in_config_file
  doc: config file
  type: File?
  inputBinding:
    prefix: --config
- id: in_schema
  doc: The scheme of the input data
  type: string?
  inputBinding:
    prefix: --schema
- id: in_root
  doc: The taxon on which to root trees
  type: string?
  inputBinding:
    prefix: --root
- id: in_var_4
  doc: '[--schema {nexus,newick,nexml,fasta,phylip}]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_genetrees_get_mean_bootrep_support
