class: CommandLineTool
id: ../../../ggd_search.cwl
inputs:
- id: genome_build
  doc: (Optional) Filter results by the genome build of the desired recipe
  type: string
  inputBinding:
    prefix: --genome-build
- id: species
  doc: (Optional) Filter results by the species for the desired recipe
  type: string
  inputBinding:
    prefix: --species
- id: display_number
  doc: (Optional) The number of search results to display. (Default = 5)
  type: string
  inputBinding:
    prefix: --display-number
- id: match_score
  doc: (Optional) A score between 0 and 100 to use to filter the results by. (Default
    = 75). The lower the number the more results will be output
  type: string
  inputBinding:
    prefix: --match-score
- id: channel
  doc: (Optional) The ggd channel to search. (Default = genomics)
  type: string
  inputBinding:
    prefix: --channel
- id: search_term
  doc: "**Required** The term(s) to search for. Multiple terms can be used. Example:\
    \ 'ggd search reference genome'"
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ggd
- search
