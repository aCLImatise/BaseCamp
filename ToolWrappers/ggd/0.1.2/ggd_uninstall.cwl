class: CommandLineTool
id: ggd_uninstall.cwl
inputs:
- id: in_channel
  doc: "The ggd channel of the recipe to uninstall. (Default =\ngenomics)\n"
  type: string
  inputBinding:
    prefix: --channel
- id: in_name
  doc: the name of the recipe to uninstall
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ggd
- uninstall
