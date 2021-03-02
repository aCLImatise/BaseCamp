class: CommandLineTool
id: readinfo2cam.cwl
inputs:
- id: in_contig_info_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_repeat_coord_file
  doc: ''
  type: File?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- readinfo2cam
