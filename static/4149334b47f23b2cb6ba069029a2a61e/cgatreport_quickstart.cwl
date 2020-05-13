class: CommandLineTool
id: cgatreport_quickstart.cwl
inputs:
- id: dest
  doc: destination directory.
  type: string
  inputBinding:
    prefix: --dest
outputs: []
cwlVersion: v1.1
baseCommand:
- cgatreport-quickstart
