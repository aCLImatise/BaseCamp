class: CommandLineTool
id: rgi_tab.cwl
inputs:
- id: in_a_file
  doc: "must be a rgi json result file\n"
  type: File?
  inputBinding:
    prefix: --afile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rgi
- tab
