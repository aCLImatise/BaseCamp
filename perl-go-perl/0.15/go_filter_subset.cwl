class: CommandLineTool
id: go_filter_subset.pl.cwl
inputs:
- id: id
  doc: ID to use as leaf node in subgraph. All ancestors of this ID are included in
    the exported graph (unless -partial is set) Multiple IDs can be passed -id ID1
    -id ID2 -id ID3 ....etc
  type: string
  inputBinding:
    prefix: -id
- id: subset
  doc: Extracts a named subset from the ontology file. (only works with obo format
    files). For example, a specific GO slim ONLY terms belonging to the subset are
    exported - the -partial option is automatically set
  type: string
  inputBinding:
    prefix: -subset
- id: namespace
  doc: only terms in this namespace
  type: string
  inputBinding:
    prefix: -namespace
- id: filter_code
  doc: "\e[1madvanced option\e[0m A subroutine with which the GO::Model::Term object\
    \ is tested for inclusion in the subgraph (all ancestors are automatically included)\
    \ You should have an understanding of the go-perl object model before using this\
    \ option Example: go-filter-subset -filter_code 'sub {shift->namespace eq 'molecular_function'}'\
    \ go.obo (the same things can be achieved with the -namespace option)"
  type: string
  inputBinding:
    prefix: -filter_code
- id: partial
  doc: 'If this is set, then only terms that match the user query are included. Parentage
    is set to the next recursive parent node in the filter For example, with the -subset
    option: if X and Y belong to the subset, and Z does not, and X is_a Z is_a Y,
    then the exported graph withh have X is_a Y'
  type: boolean
  inputBinding:
    prefix: -partial
- id: use_cache
  doc: If this switch is specified, then caching mode is turned on. With caching mode,
    the first time you parse a file, then an additional file will be exported in a
    special format that is fast to parse. This file will have the same filename as
    the original file, except it will have the ".cache" suffix. The next time you
    parse the file, this program will automatically check for the existence of the
    ".cache" file. If it exists, and is more recent than the file you specified, this
    is parsed instead. If it does not exist, it is rebuilt.
  type: boolean
  inputBinding:
    prefix: -use_cache
outputs: []
cwlVersion: v1.1
baseCommand:
- go-filter-subset.pl
