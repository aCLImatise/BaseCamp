class: CommandLineTool
id: get_species_taxids.sh.bak.cwl
inputs:
- id: in_get_taxonomy_ids
  doc: Get taxonomy IDs at or below input taxonomy ID level
  type: string?
  inputBinding:
    prefix: -t
- id: in_scientific_name_common
  doc: "<Scientific Name, Common Name or Keyword>\nGet taxonomy information for organism\n"
  type: boolean?
  inputBinding:
    prefix: -n
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/blast:2.11.0--pl526he19e7b1_0
cwlVersion: v1.1
baseCommand:
- get_species_taxids.sh.bak
