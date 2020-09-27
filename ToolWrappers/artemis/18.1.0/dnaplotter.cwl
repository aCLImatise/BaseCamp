class: CommandLineTool
id: dnaplotter.cwl
inputs:
- id: in_read_template_file
  doc: Read a template file
  type: File
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dnaplotter
