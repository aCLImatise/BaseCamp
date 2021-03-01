class: CommandLineTool
id: dgenies_inforun.cwl
inputs:
- id: in_message
  doc: Message to add
  type: string?
  inputBinding:
    prefix: --message
- id: in_type
  doc: Type of message
  type: string?
  inputBinding:
    prefix: --type
- id: in_clear
  doc: Remove message
  type: boolean?
  inputBinding:
    prefix: --clear
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dgenies
- inforun
