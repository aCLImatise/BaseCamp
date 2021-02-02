class: CommandLineTool
id: phyluce_genetrees_get_tree_counts.cwl
inputs:
- id: in_locus_support_output
  doc: "LOCUS_SUPPORT_OUTPUT\n[--schema {nexus,newick,nexml,fasta,phylip}]\n--root\
    \ ROOT --extension EXTENSION\n[--exclude EXCLUDE [EXCLUDE ...]]"
  type: boolean
  inputBinding:
    prefix: --locus-support-output
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
- id: in_root
  doc: The taxon on which to root trees
  type: string
  inputBinding:
    prefix: --root
- id: in_extension
  doc: File extension used with each 'best' tree
  type: File
  inputBinding:
    prefix: --extension
- id: in_exclude
  doc: "Loci to exclude\n"
  type: string[]
  inputBinding:
    prefix: --exclude
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_genetrees_get_tree_counts
