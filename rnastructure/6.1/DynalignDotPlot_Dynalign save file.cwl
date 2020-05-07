class: CommandLineTool
id: DynalignDotPlot_Dynalign save file.cwl
inputs:
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- DynalignDotPlot
- Dynalign save file
