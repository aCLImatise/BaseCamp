class: CommandLineTool
id: transposcope_view_web_directory.cwl
inputs:
- id: web_directory
  doc: The path to the web directory created by the align tool.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- transposcope
- view
- web_directory
