class: CommandLineTool
id: makeset.cwl
inputs:
- id: in_input_file_names
  doc: "Input File Names [File In]\ndefault = stdin"
  type: boolean
  inputBinding:
    prefix: -i
- id: in_input_data_binary
  doc: "Input data is binary [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -d
- id: in_output_data_binary
  doc: "Output data as binary [T/F]  Optional\ndefault = T"
  type: boolean
  inputBinding:
    prefix: -b
- id: in_output_bioseqset_default
  doc: "Output Bioseq-set [Data Out]\ndefault = stdout\nData Type = Bioseq-set"
  type: boolean
  inputBinding:
    prefix: -o
- id: in_bioseqsetclass_default_
  doc: "Bioseq-set.class [Integer]\ndefault = 255"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_bioseqsetrelease__optional
  doc: Bioseq-set.release [String]  Optional
  type: boolean
  inputBinding:
    prefix: -r
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- makeset
