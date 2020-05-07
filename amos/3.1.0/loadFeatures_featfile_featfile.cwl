class: CommandLineTool
id: loadFeatures_featfile_featfile.cwl
inputs:
- id: u
  doc: are ungapped
  type: string
  inputBinding:
    prefix: -u
- id: i
  doc: is the IID
  type: string
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- loadFeatures
- featfile
- featfile
