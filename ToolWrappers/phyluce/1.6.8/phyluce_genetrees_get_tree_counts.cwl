class: CommandLineTool
id: phyluce_genetrees_get_tree_counts.cwl
inputs:
- id: in_trees
  doc: Tree file
  type: File?
  inputBinding:
    prefix: --trees
- id: in_output_file_store
  doc: "The output file in which to store trees and their\nassociated loci (config\
    \ format)"
  type: File?
  inputBinding:
    prefix: --locus-support-output
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
- id: in_extension
  doc: File extension used with each 'best' tree
  type: File?
  inputBinding:
    prefix: --extension
- id: in_exclude
  doc: "Loci to exclude\n"
  type: string[]
  inputBinding:
    prefix: --exclude
- id: in_var_6
  doc: '[--schema {nexus,newick,nexml,fasta,phylip}]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_store
  doc: "The output file in which to store trees and their\nassociated loci (config\
    \ format)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_store)
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_genetrees_get_tree_counts
