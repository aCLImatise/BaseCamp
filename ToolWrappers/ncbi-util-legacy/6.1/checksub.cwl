class: CommandLineTool
id: checksub.cwl
inputs:
- id: in_input_data_type
  doc: "Input data [Data In]\nData Type = Seq-submit"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_input_data_binary
  doc: "Input data is binary [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_output_data_default
  doc: "Output data [Data Out]\ndefault = stdout\nData Type = Seq-submit\n"
  type: boolean?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- checksub
