class: CommandLineTool
id: dsh_bio.cwl
inputs:
- id: about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
outputs: []
cwlVersion: v1.1
baseCommand:
- dsh-bio
