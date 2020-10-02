class: CommandLineTool
id: chakin_organism_delete_all_organisms.cwl
inputs:
- id: in_confirm
  doc: Confirm that you really do want to delete ALL of the organisms.
  type: boolean
  inputBinding:
    prefix: --confirm
- id: in_none
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- chakin
- organism
- delete_all_organisms
