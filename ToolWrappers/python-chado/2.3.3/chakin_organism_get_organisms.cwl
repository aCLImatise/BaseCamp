class: CommandLineTool
id: chakin_organism_get_organisms.cwl
inputs:
- id: in_organism_id
  doc: organism_id filter
  type: long
  inputBinding:
    prefix: --organism_id
- id: in_genus
  doc: genus filter
  type: string
  inputBinding:
    prefix: --genus
- id: in_species
  doc: species filter
  type: string
  inputBinding:
    prefix: --species
- id: in_common
  doc: common filter
  type: string
  inputBinding:
    prefix: --common
- id: in_abbr
  doc: abbr filter
  type: string
  inputBinding:
    prefix: --abbr
- id: in_comment
  doc: comment filter
  type: string
  inputBinding:
    prefix: --comment
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- chakin
- organism
- get_organisms
