class: CommandLineTool
id: go_filter_subset.pl.cwl
inputs:
- id: in_id
  doc: "ID to use as leaf node in subgraph. All ancestors of this ID are\nincluded\
    \ in the exported graph (unless -partial is set)\nMultiple IDs can be passed\n\
    -id ID1 -id ID2 -id ID3 ....etc"
  type: long?
  inputBinding:
    prefix: -id
- id: in_subset
  doc: "Extracts a named subset from the ontology file. (only works with obo\nformat\
    \ files). For example, a specific GO slim\nONLY terms belonging to the subset\
    \ are exported - the -partial\noption is automatically set"
  type: File?
  inputBinding:
    prefix: -subset
- id: in_namespace
  doc: only terms in this namespace
  type: string?
  inputBinding:
    prefix: -namespace
- id: in_filter_code
  doc: "advanced option\nA subroutine with which the GO::Model::Term object is tested\
    \ for\ninclusion in the subgraph (all ancestors are automatically included)\n\
    You should have an understanding of the go-perl object model before\nusing this\
    \ option\nExample:\ngo-filter-subset -filter_code 'sub {shift->namespace eq 'molecular_function'}'\
    \ go.obo\n(the same things can be achieved with the -namespace option)"
  type: string?
  inputBinding:
    prefix: -filter_code
- id: in_partial
  doc: "If this is set, then only terms that match the user query are\nincluded. Parentage\
    \ is set to the next recursive parent node in the\nfilter\nFor example, with the\
    \ -subset option: if X and Y belong to the\nsubset, and Z does not, and X is_a\
    \ Z is_a Y, then the exported graph\nwithh have X is_a Y"
  type: boolean?
  inputBinding:
    prefix: -partial
- id: in_use_cache
  doc: "If this switch is specified, then caching mode is turned on.\nWith caching\
    \ mode, the first time you parse a file, then an\nadditional file will be exported\
    \ in a special format that is fast to\nparse. This file will have the same filename\
    \ as the original file,\nexcept it will have the \".cache\" suffix.\nThe next\
    \ time you parse the file, this program will automatically\ncheck for the existence\
    \ of the \".cache\" file. If it exists, and is\nmore recent than the file you\
    \ specified, this is parsed instead. If\nit does not exist, it is rebuilt."
  type: boolean?
  inputBinding:
    prefix: -use_cache
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- go-filter-subset.pl
