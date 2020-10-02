class: CommandLineTool
id: kronos_make_component.cwl
inputs:
- id: in_component_name
  doc: a name for the component to be generated
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- kronos
- make_component
