class: CommandLineTool
id: FlowSOMMApIndividualFCS.R.cwl
inputs:
- id: in_union
  doc: "Attaching package: 'flowCore'"
  type: string
  inputBinding:
    position: 0
- id: in_normalize
  doc: 'Error in if (args[4] == "meta") { : missing value where TRUE/FALSE needed'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- FlowSOMMApIndividualFCS.R
