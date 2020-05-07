class: CommandLineTool
id: get_species_taxids.sh.cwl
inputs:
- id: t
  doc: Get taxonomy IDs at or below input taxonomy ID level
  type: string
  inputBinding:
    prefix: -t
- id: n
  doc: <Scientific Name, Common Name or Keyword> Get taxonomy information for organism
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- get_species_taxids.sh
