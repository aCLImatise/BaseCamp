class: CommandLineTool
id: dconvlum.cwl
inputs:
- id: in_file
  doc: VeriLUM characteristic curve file to be converted
  type: string
  inputBinding:
    position: 0
- id: out_file
  doc: DCMTK display file to be written
  type: string
  inputBinding:
    position: 1
- id: ambient
  doc: ambient light (cd/m^2, floating point value)
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- dconvlum
