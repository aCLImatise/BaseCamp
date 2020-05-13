class: CommandLineTool
id: RemovePseudoknots_smp.cwl
inputs:
- id: remove_pseudo_knots
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_ct_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_ct_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- RemovePseudoknots-smp
