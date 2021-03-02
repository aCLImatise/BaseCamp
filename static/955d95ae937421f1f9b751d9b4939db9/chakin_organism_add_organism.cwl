class: CommandLineTool
id: chakin_organism_add_organism.cwl
inputs:
- id: in_comment
  doc: A comment / description
  type: string?
  inputBinding:
    prefix: --comment
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
- id: in_common
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_abbr
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/python-chado:2.3.4--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- chakin
- organism
- add_organism
