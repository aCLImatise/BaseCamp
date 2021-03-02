class: CommandLineTool
id: transposcope_view.cwl
inputs:
- id: in_web_directory
  doc: The path to the web directory created by the align tool.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- transposcope
- view
