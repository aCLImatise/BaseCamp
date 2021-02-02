class: CommandLineTool
id: espoca.cwl
inputs:
- id: in_var_0
  doc: ''
  type: File
  inputBinding:
    prefix: --treefile
- id: in_var_1
  doc: ''
  type: File
  inputBinding:
    prefix: --alnfile
- id: in_var_2
  doc: ''
  type: string
  inputBinding:
    prefix: --species
- id: in_species_parameter_see
  doc: species parameter for calculation of the codon usage. type 'augustus --species=help'
    to see what species are available
  type: string
  inputBinding:
    position: 0
- id: in_codon_alignment_file
  doc: codon alignment file in multi fasta format
  type: string
  inputBinding:
    position: 1
- id: in_phylogenetic_tree_branchlength
  doc: phylogenetic tree with branchlength in newick format (startree is used if not
    specified)
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- espoca
