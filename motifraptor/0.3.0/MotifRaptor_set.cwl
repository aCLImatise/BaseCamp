class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/MotifRaptor_set.cwl
inputs:
- id: parameter_name
  doc: Parameter Name
  type: string
  inputBinding:
    prefix: --parametername
- id: parameter_value
  doc: Parameter Value
  type: string
  inputBinding:
    prefix: --parametervalue
outputs: []
cwlVersion: v1.1
baseCommand:
- MotifRaptor
- set
