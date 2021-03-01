class: CommandLineTool
id: drive_about.cwl
inputs:
- id: in_features
  doc: gives information on features present on this drive
  type: boolean?
  inputBinding:
    prefix: -features
- id: in_filesize
  doc: prints out information about file sizes e.g the max upload size for a specific
    file size
  type: boolean?
  inputBinding:
    prefix: -filesize
- id: in_quota
  doc: "prints out quota information for this drive\n"
  type: boolean?
  inputBinding:
    prefix: -quota
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- drive
- about
