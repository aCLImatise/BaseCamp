class: CommandLineTool
id: hgFakeAgp_output.agp.cwl
inputs:
- id: input_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_agp
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- hgFakeAgp
- output.agp
