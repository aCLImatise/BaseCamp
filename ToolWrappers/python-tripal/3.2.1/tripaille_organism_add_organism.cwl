class: CommandLineTool
id: tripaille_organism_add_organism.cwl
inputs:
- id: in_common
  doc: The common name of the organism
  type: string?
  inputBinding:
    prefix: --common
- id: in_abbr
  doc: The abbreviation of the organism
  type: string?
  inputBinding:
    prefix: --abbr
- id: in_comment
  doc: A comment / description
  type: string?
  inputBinding:
    prefix: --comment
- id: in_infraspecific_rank
  doc: "The type name of infraspecific name for any taxon\nbelow the rank of species.\
    \ Must be one of\n['subspecies', 'varietas', 'subvariety', 'forma',\n'subforma']"
  type: string?
  inputBinding:
    prefix: --infraspecific_rank
- id: in_infraspecific_name
  doc: The infraspecific name for this organism.
  type: string?
  inputBinding:
    prefix: --infraspecific_name
- id: in_genus
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_species
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tripaille
- organism
- add_organism
