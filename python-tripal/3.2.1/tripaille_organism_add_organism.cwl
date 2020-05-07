class: CommandLineTool
id: tripaille_organism_add_organism.cwl
inputs:
- id: common
  doc: The common name of the organism
  type: string
  inputBinding:
    prefix: --common
- id: abbr
  doc: The abbreviation of the organism
  type: string
  inputBinding:
    prefix: --abbr
- id: comment
  doc: A comment / description
  type: string
  inputBinding:
    prefix: --comment
- id: infraspecific_rank
  doc: The type name of infraspecific name for any taxon below the rank of species.
    Must be one of ['subspecies', 'varietas', 'subvariety', 'forma', 'subforma']
  type: string
  inputBinding:
    prefix: --infraspecific_rank
- id: infraspecific_name
  doc: The infraspecific name for this organism.
  type: string
  inputBinding:
    prefix: --infraspecific_name
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- organism
- add_organism
