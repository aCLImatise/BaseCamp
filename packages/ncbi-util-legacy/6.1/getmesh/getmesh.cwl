class: CommandLineTool
id: getmesh.cwl
inputs:
- id: in_input_data_data
  doc: "Input data [Data In]\nData Type = Medline-entry"
  type: boolean
  inputBinding:
    prefix: -i
- id: in_input_data_binary
  doc: "Input data is binary [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -b
- id: in_output_list
  doc: Output list [File Out]
  type: File
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_list
  doc: Output list [File Out]
  type: File
  outputBinding:
    glob: $(inputs.in_output_list)
cwlVersion: v1.1
baseCommand:
- getmesh
