class: CommandLineTool
id: indexpub.cwl
inputs:
- id: in_input_data_default
  doc: "Input data [Data In]\ndefault = medline.val\nData Type = Pub-set"
  type: boolean
  inputBinding:
    prefix: -i
- id: in_input_data_binary
  doc: "Input data is binary [T/F]  Optional\ndefault = T"
  type: boolean
  inputBinding:
    prefix: -b
- id: in_output_index_table
  doc: "Output index table [File Out]\ndefault = medline.idx\n"
  type: File
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_index_table
  doc: "Output index table [File Out]\ndefault = medline.idx\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_index_table)
cwlVersion: v1.1
baseCommand:
- indexpub
