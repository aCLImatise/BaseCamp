class: CommandLineTool
id: tripaille_organism_get_organisms.cwl
inputs:
- id: in_organism_id
  doc: An organism ID
  type: string?
  inputBinding:
    prefix: --organism_id
- id: in_genus
  doc: The genus of the organism
  type: string?
  inputBinding:
    prefix: --genus
- id: in_species
  doc: The species of the organism
  type: string?
  inputBinding:
    prefix: --species
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tripaille
- organism
- get_organisms
