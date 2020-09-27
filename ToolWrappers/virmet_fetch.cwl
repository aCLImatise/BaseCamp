class: CommandLineTool
id: virmet_fetch.cwl
inputs:
- id: in_viral
  doc: viral [nucleic acids/proteins]
  type: string
  inputBinding:
    prefix: --viral
- id: in_human
  doc: human
  type: boolean
  inputBinding:
    prefix: --human
- id: in_bact
  doc: bacterial (RefSeq)
  type: boolean
  inputBinding:
    prefix: --bact
- id: in_fungal
  doc: fungal (RefSeq)
  type: boolean
  inputBinding:
    prefix: --fungal
- id: in_bovine
  doc: bovine (Bos taurus)
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
- id: in_fetch
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
- fetch
