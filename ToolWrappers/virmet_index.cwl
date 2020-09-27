class: CommandLineTool
id: virmet_index.cwl
inputs:
- id: in_viral
  doc: make blast index of viral database
  type: string
  inputBinding:
    prefix: --viral
- id: in_human
  doc: make bwa index of human database
  type: boolean
  inputBinding:
    prefix: --human
- id: in_bact
  doc: make bwa index of bacterial database
  type: boolean
  inputBinding:
    prefix: --bact
- id: in_fungal
  doc: make bwa index of fungal database
  type: boolean
  inputBinding:
    prefix: --fungal
- id: in_bovine
  doc: make bwa index of bovine database
  type: boolean
  inputBinding:
    prefix: --bovine
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
- id: in_index
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
- index
