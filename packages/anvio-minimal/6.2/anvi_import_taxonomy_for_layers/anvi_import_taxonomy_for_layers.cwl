class: CommandLineTool
id: anvi_import_taxonomy_for_layers.cwl
inputs:
- id: in_profile_db
  doc: Anvi'o profile database
  type: string
  inputBinding:
    prefix: --profile-db
- id: in_parser
  doc: "Parser to make sense of the input files. There are 1\nparsers readily available:\
    \ ['krakenuniq']."
  type: long
  inputBinding:
    prefix: --parser
- id: in_s_input_files
  doc: "(S) [FILE(S) ...], --input-files FILE(S) [FILE(S) ...]\nInput file(s) for\
    \ selected parser. Each parser (except\n\"blank\") requires input files to process\
    \ that you\ngenerate before running anvio. Please see the\ndocumentation for details."
  type: File
  inputBinding:
    prefix: -i
- id: in_min_abundance
  doc: "Short read-based taxonomy can be extremely noisy.\nTherefore, here we have\
    \ defeault minimum percentage\ncutoff of 0.1% to eliminate any taxon that occurs\
    \ less\nthan that in a given input file.\n"
  type: long
  inputBinding:
    prefix: --min-abundance
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- anvi-import-taxonomy-for-layers
