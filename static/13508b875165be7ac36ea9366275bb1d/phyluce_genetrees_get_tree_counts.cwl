class: CommandLineTool
id: ../../../phyluce_genetrees_get_tree_counts.cwl
inputs:
- id: in_var_0
  doc: ''
  type: boolean
  inputBinding:
    prefix: --locus-support-output
- id: in_extension
  doc: ''
  type: string
  inputBinding:
    prefix: --extension
- id: in_trees
  doc: Tree file
  type: File
  inputBinding:
    prefix: --trees
- id: in_schema
  doc: The scheme of the input data
  type: string
  inputBinding:
    prefix: --schema
- id: in_exclude
  doc: "Loci to exclude\n"
  type: string[]
  inputBinding:
    prefix: --exclude
- id: in_var_5
  doc: '[--schema {nexus,newick,nexml,fasta,phylip}]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_genetrees_get_tree_counts
