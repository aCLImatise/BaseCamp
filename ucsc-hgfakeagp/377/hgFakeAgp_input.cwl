class: CommandLineTool
id: hgFakeAgp_input.fa.cwl
inputs:
- id: output_agp
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- hgFakeAgp
- input.fa
