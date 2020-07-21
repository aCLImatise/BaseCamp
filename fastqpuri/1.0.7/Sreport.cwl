class: CommandLineTool
id: ../../../Sreport.cwl
inputs:
- id: file_extension_mandatory
  doc: file (with NO extension). Mandatory option.
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- Sreport
