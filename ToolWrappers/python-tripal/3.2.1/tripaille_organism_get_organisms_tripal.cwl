class: CommandLineTool
id: tripaille_organism_get_organisms_tripal.cwl
inputs:
- id: in_organism_id
  doc: An organism entity ID
  type: long
  inputBinding:
    prefix: --organism_id
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tripaille
- organism
- get_organisms_tripal
