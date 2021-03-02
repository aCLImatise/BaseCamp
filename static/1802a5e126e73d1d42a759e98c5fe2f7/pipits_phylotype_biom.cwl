class: CommandLineTool
id: pipits_phylotype_biom.cwl
inputs:
- id: in__biom_file
  doc: '[REQUIRED] BIOM file'
  type: File?
  inputBinding:
    prefix: -i
- id: in_phylotype_txt_file
  doc: '[REQUIRED] PHYLOTYPE txt file'
  type: File?
  inputBinding:
    prefix: -o
- id: in_classification_level_species
  doc: "[REQUIRED] Classification Level. 6 = species, 5 = genus, 4 =\nfamily, 3 =\
    \ order, 2 = class, 1 = phylum\n"
  type: long?
  inputBinding:
    prefix: -l
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pipits_phylotype_biom
