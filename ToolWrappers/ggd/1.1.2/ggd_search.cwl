class: CommandLineTool
id: ggd_search.cwl
inputs:
- id: in_search_type
  doc: "(Optional) How to search for data packages with the\nsearch terms provided.\
    \ Options = 'combined-only',\n'non-combined-only', and 'both'. 'combined-only'\
    \ will\nuse the provided search terms as a single search term.\n'non-combined-only'\
    \ will use the provided search term\nto search for data package that match each\
    \ search term\nseparately. 'both' will use the search terms combined\nand each\
    \ search term separately to search for data\npackages. Default = 'both'"
  type: string?
  inputBinding:
    prefix: --search-type
- id: in_genome_build
  doc: "(Optional) Filter results by the genome build of the\ndesired recipe"
  type: string?
  inputBinding:
    prefix: --genome-build
- id: in_species
  doc: "(Optional) Filter results by the species for the\ndesired recipe"
  type: string?
  inputBinding:
    prefix: --species
- id: in_display_number
  doc: "(Optional) The number of search results to display.\n(Default = 5)"
  type: long?
  inputBinding:
    prefix: --display-number
- id: in_match_score
  doc: "(Optional) A score between 0 and 100 to use to filter\nthe results by. (Default\
    \ = 90). The lower the number\nthe more results will be output"
  type: long?
  inputBinding:
    prefix: --match-score
- id: in_channel
  doc: "(Optional) The ggd channel to search. (Default =\ngenomics)\n"
  type: string?
  inputBinding:
    prefix: --channel
- id: in_search_term
  doc: "**Required** The term(s) to search for. Multiple terms\ncan be used. Example:\
    \ 'ggd search reference genome'"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ggd:1.1.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- ggd
- search
