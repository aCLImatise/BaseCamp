class: CommandLineTool
id: tripaille_organism_get_organisms.cwl
inputs:
- id: organism_id
  doc: An organism ID
  type: string
  inputBinding:
    prefix: --organism_id
- id: genus
  doc: The genus of the organism
  type: string
  inputBinding:
    prefix: --genus
- id: species
  doc: The species of the organism
  type: string
  inputBinding:
    prefix: --species
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
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- organism
- get_organisms
