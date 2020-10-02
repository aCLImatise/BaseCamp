class: CommandLineTool
id: singularity_plugin_list.cwl
inputs:
- id: in_enabled
  doc: NAME
  type: string
  inputBinding:
    position: 0
- id: in_yes
  doc: example.org/plugin
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- singularity
- plugin
- list
