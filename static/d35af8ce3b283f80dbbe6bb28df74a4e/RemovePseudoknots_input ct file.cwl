class: CommandLineTool
id: RemovePseudoknots_input ct file.cwl
inputs:
- id: output_ct_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- RemovePseudoknots
- input ct file
