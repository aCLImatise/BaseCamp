class: CommandLineTool
id: phyluce_genetrees_get_tree_counts.cwl
inputs:
- id: trees
  doc: Tree file
  type: string
  inputBinding:
    prefix: --trees
- id: locus_support_output
  doc: The output file in which to store trees and their associated loci (config format)
  type: string
  inputBinding:
    prefix: --locus-support-output
- id: schema
  doc: The scheme of the input data
  type: string
  inputBinding:
    prefix: --schema
- id: root
  doc: The taxon on which to root trees
  type: string
  inputBinding:
    prefix: --root
- id: extension
  doc: File extension used with each 'best' tree
  type: string
  inputBinding:
    prefix: --extension
- id: exclude
  doc: Loci to exclude
  type: string[]
  inputBinding:
    prefix: --exclude
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_genetrees_get_tree_counts
