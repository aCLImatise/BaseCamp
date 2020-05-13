class: CommandLineTool
id: anvi_import_taxonomy_for_layers.cwl
inputs:
- id: profile_db
  doc: Anvi'o profile database
  type: string
  inputBinding:
    prefix: --profile-db
- id: parser
  doc: "Parser to make sense of the input files. There are 1 parsers readily available:\
    \ ['krakenuniq']."
  type: string
  inputBinding:
    prefix: --parser
- id: i
  doc: (S) [FILE(S) ...], --input-files FILE(S) [FILE(S) ...] Input file(s) for selected
    parser. Each parser (except "blank") requires input files to process that you
    generate before running anvio. Please see the documentation for details.
  type: File
  inputBinding:
    prefix: -i
- id: min_abundance
  doc: Short read-based taxonomy can be extremely noisy. Therefore, here we have defeault
    minimum percentage cutoff of 0.1% to eliminate any taxon that occurs less than
    that in a given input file.
  type: string
  inputBinding:
    prefix: --min-abundance
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-import-taxonomy-for-layers
