class: CommandLineTool
id: benchmark2mates.cwl
inputs:
- id: in_prefix_resulting_mates
  doc: prefix for the resulting .mates file. (required)
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_generate_file_optional
  doc: generate Bambus <outprefix>.conf file (optional)
  type: boolean?
  inputBinding:
    prefix: -C
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- benchmark2mates
