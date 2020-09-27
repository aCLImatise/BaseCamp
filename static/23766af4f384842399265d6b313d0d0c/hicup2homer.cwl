class: CommandLineTool
id: hicup2homer.cwl
inputs:
- id: in_zip
  doc: Write output to a gzip file
  type: File
  inputBinding:
    prefix: --zip
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_zip
  doc: Write output to a gzip file
  type: File
  outputBinding:
    glob: $(inputs.in_zip)
cwlVersion: v1.1
baseCommand:
- hicup2homer
