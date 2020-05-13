class: CommandLineTool
id: fasttreeMP.cwl
inputs:
- id: expert
  doc: options
  type: string
  inputBinding:
    prefix: -expert
outputs: []
cwlVersion: v1.1
baseCommand:
- fasttreeMP
