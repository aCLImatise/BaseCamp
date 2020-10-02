class: CommandLineTool
id: webserver_results.tail.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- webserver-results.tail
