class: CommandLineTool
id: stringify.cwl
inputs:
- id: in_var
  doc: "- create a variable with the specified name containing\nthe string."
  type: string?
  inputBinding:
    prefix: -var
- id: in_static
  doc: '- create the variable but put static in front of it.'
  type: boolean?
  inputBinding:
    prefix: -static
- id: in_array
  doc: '- create an array of strings, one for each line'
  type: boolean?
  inputBinding:
    prefix: -array
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- stringify
