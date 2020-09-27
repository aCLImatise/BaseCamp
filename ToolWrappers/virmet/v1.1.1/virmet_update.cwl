class: CommandLineTool
id: virmet_update.cwl
inputs:
- id: in_viral
  doc: update viral [n]ucleic/[p]rotein
  type: string
  inputBinding:
    prefix: --viral
- id: in_bact
  doc: update bacterial database
  type: boolean
  inputBinding:
    prefix: --bact
- id: in_fungal
  doc: update fungal database
  type: boolean
  inputBinding:
    prefix: --fungal
- id: in_picked
  doc: file with additional sequences, one GI per line
  type: File
  inputBinding:
    prefix: --picked
- id: in_vir_met
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_command
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_update
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- virmet
- update
