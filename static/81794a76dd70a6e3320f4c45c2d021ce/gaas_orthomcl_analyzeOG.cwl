class: CommandLineTool
id: gaas_orthomcl_analyzeOG.pl.cwl
inputs:
- id: tree
  doc: Tree file in nhx format. If provided the analyse will focuse only on species
    present in the tree. When no tree is provided, a species tree will be created
    on the fly using the NCBI taxonomy database online according to the species present
    among the OG.
  type: string
  inputBinding:
    prefix: --tree
- id: species
  doc: taxid or scientific name (use underscore instead of spaces). It allows to focus
    the analysis only on OG containg the species defined.
  type: string
  inputBinding:
    prefix: --species
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_orthomcl_analyzeOG.pl
