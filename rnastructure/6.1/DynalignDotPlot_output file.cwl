class: CommandLineTool
id: DynalignDotPlot_output file.cwl
inputs:
- id: dyn_align_save_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- DynalignDotPlot
- output file
