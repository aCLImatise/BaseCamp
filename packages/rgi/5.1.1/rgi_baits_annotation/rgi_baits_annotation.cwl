class: CommandLineTool
id: rgi_baits_annotation.cwl
inputs:
- id: in_index_file
  doc: "index file with baits information\n"
  type: File
  inputBinding:
    prefix: --index_file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rgi
- baits_annotation
