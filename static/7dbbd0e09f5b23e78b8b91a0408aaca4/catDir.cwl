class: CommandLineTool
id: catDir.cwl
inputs:
- id: non_z
  doc: Prints file name of non-zero length files
  type: boolean
  inputBinding:
    prefix: -nonz
outputs: []
cwlVersion: v1.1
baseCommand:
- catDir
