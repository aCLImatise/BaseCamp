class: CommandLineTool
id: espoca.cwl
inputs:
- id: species
  doc: species parameter for calculation of the codon usage. type 'augustus --species=help'
    to see what species are available
  type: string
  inputBinding:
    position: 0
- id: aln_file
  doc: codon alignment file in multi fasta format
  type: string
  inputBinding:
    position: 1
- id: tree_file
  doc: phylogenetic tree with branchlength in newick format (startree is used if not
    specified)
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- espoca
