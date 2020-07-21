class: CommandLineTool
id: ../../../espoca.cwl
inputs:
- id: var_0
  doc: ''
  type: string
  inputBinding:
    prefix: --species
- id: var_1
  doc: ''
  type: string
  inputBinding:
    prefix: --alnfile
- id: var_2
  doc: ''
  type: string
  inputBinding:
    prefix: --treefile
- id: species_parameter_calculation
  doc: species parameter for calculation of the codon usage. type 'augustus --species=help'
    to see what species are available
  type: string
  inputBinding:
    position: 0
- id: codon_alignment_file
  doc: codon alignment file in multi fasta format
  type: string
  inputBinding:
    position: 1
- id: phylogenetic_tree_branchlength
  doc: phylogenetic tree with branchlength in newick format (startree is used if not
    specified)
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- espoca
