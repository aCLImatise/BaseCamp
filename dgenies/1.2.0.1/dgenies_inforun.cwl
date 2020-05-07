class: CommandLineTool
id: dgenies_inforun.cwl
inputs:
- id: message
  doc: Message to add
  type: string
  inputBinding:
    prefix: --message
- id: type
  doc: Type of message
  type: string
  inputBinding:
    prefix: --type
- id: clear
  doc: Remove message
  type: boolean
  inputBinding:
    prefix: --clear
outputs: []
cwlVersion: v1.1
baseCommand:
- dgenies
- inforun
