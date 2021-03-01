class: CommandLineTool
id: MotifRaptor_set.cwl
inputs:
- id: in_parameter_name
  doc: Parameter Name
  type: string?
  inputBinding:
    prefix: --parametername
- id: in_parameter_value
  doc: "Parameter Value\n"
  type: string?
  inputBinding:
    prefix: --parametervalue
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- MotifRaptor
- set
