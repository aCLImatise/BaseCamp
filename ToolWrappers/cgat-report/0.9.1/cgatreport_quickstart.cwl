class: CommandLineTool
id: cgatreport_quickstart.cwl
inputs:
- id: in_dest
  doc: "destination directory.\n"
  type: Directory?
  inputBinding:
    prefix: --dest
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cgatreport-quickstart
