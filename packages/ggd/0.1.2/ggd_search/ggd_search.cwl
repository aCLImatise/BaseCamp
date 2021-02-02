class: CommandLineTool
id: ../../../ggd_search.cwl
inputs:
- id: in_genome_build
  doc: "(Optional) Filter results by the genome build of the\ndesired recipe"
  type: string
  inputBinding:
    prefix: --genome-build
- id: in_species
  doc: "(Optional) Filter results by the species for the\ndesired recipe"
  type: string
  inputBinding:
    prefix: --species
- id: in_display_number
  doc: "(Optional) The number of search results to display.\n(Default = 5)"
  type: long
  inputBinding:
    prefix: --display-number
- id: in_match_score
  doc: "(Optional) A score between 0 and 100 to use to filter\nthe results by. (Default\
    \ = 75). The lower the number\nthe more results will be output"
  type: long
  inputBinding:
    prefix: --match-score
- id: in_channel
  doc: "(Optional) The ggd channel to search. (Default =\ngenomics)\n"
  type: string
  inputBinding:
    prefix: --channel
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ggd
- search
