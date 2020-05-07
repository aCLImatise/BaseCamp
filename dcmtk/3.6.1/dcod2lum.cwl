class: CommandLineTool
id: dcod2lum.cwl
inputs:
- id: in_file
  doc: hardcopy characteristic curve file to be converted
  type: string
  inputBinding:
    position: 0
- id: out_file
  doc: softcopy characteristic curve file to be written
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- dcod2lum
