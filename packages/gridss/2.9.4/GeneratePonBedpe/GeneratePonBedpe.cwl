class: CommandLineTool
id: GeneratePonBedpe.cwl
inputs:
- id: in_displays_options_specific
  doc: "Displays options specific to this tool AND options common to all Picard command\
    \ line\ntools."
  type: boolean
  inputBinding:
    prefix: -H
- id: in_value_dot
  doc: INCLUDE_IMPRECISE_CALLS=Boolean
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- GeneratePonBedpe
