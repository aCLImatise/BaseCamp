class: CommandLineTool
id: md5sum_lite.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- md5sum-lite
