class: CommandLineTool
id: SCFtoCTG_inputfile.cwl
inputs:
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- SCFtoCTG
- inputfile
