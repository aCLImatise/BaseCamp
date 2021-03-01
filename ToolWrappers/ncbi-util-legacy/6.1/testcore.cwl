class: CommandLineTool
id: testcore.cwl
inputs:
- id: in_test_boolean_default
  doc: "test Boolean [T/F]\ndefault = T"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_test_integer_range
  doc: "test Integer [Integer]  Optional\ndefault = 42\nrange from 41 to 43"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_test_float_default
  doc: "test Float [Real]\ndefault = 3.14159"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_test_string_optional
  doc: test String [String]  Optional
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_test_filein_optional
  doc: test File-in [File In]  Optional
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_test_fileout_optional
  doc: test File-out [File Out]  Optional
  type: File?
  inputBinding:
    prefix: -x
- id: in_test_datain_optionaldata
  doc: "test Data-in [Data In]  Optional\nData Type = Fake-type"
  type: boolean?
  inputBinding:
    prefix: -y
- id: in_test_dataout_optionaldata
  doc: "test Data-out [Data Out]  Optional\nData Type = Fake-out\n"
  type: boolean?
  inputBinding:
    prefix: -z
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_test_fileout_optional
  doc: test File-out [File Out]  Optional
  type: File?
  outputBinding:
    glob: $(inputs.in_test_fileout_optional)
hints: []
cwlVersion: v1.1
baseCommand:
- testcore
