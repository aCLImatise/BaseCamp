class: CommandLineTool
id: lorikeet_filter.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lorikeet
- filter