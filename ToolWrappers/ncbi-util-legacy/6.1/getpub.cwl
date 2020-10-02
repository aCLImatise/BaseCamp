class: CommandLineTool
id: getpub.cwl
inputs:
- id: in_input_binary_data
  doc: "Input binary data [Data In]\ndefault = medline.val\nData Type = Pub-set"
  type: boolean
  inputBinding:
    prefix: -i
- id: in_medline_uid_find
  doc: "Medline UID to find [Integer]\ndefault = 88055872"
  type: boolean
  inputBinding:
    prefix: -u
- id: in_input_index_table
  doc: "Input index table [File In]\ndefault = medline.idx"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_output_data_default
  doc: "Output data [Data Out]\ndefault = stdout\nData Type = Medline-entry"
  type: boolean
  inputBinding:
    prefix: -o
- id: in_output_data_binary
  doc: "Output data is binary [T/F]\ndefault = F\n"
  type: boolean
  inputBinding:
    prefix: -b
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- getpub
