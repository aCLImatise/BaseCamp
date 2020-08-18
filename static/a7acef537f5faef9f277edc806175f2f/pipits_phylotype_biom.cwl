class: CommandLineTool
id: ../../../pipits_phylotype_biom.cwl
inputs:
- id: _biom_file
  doc: '[REQUIRED] BIOM file'
  type: string
  inputBinding:
    prefix: -i
- id: phylotype_txt_file
  doc: '[REQUIRED] PHYLOTYPE txt file'
  type: File
  inputBinding:
    prefix: -o
- id: classification_level_species
  doc: '[REQUIRED] Classification Level. 6 = species, 5 = genus, 4 = family, 3 = order,
    2 = class, 1 = phylum'
  type: long
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- pipits_phylotype_biom
