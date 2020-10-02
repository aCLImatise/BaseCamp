class: CommandLineTool
id: rgi_load.cwl
inputs:
- id: in_a_file
  doc: "must be a card database json file\n"
  type: File
  inputBinding:
    prefix: --afile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rgi_load
