class: CommandLineTool
id: findspl.cwl
inputs:
- id: in_gi_number_range
  doc: "Gi number of protein [Integer]\ndefault = 0\nrange from 1 to 99999999"
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_input_file_containing
  doc: "Input file containing protein GIs [File In]\ndefault = stdin"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_output_file_default
  doc: "Output file [File Out]\ndefault = stdout\n"
  type: File?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_default
  doc: "Output file [File Out]\ndefault = stdout\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_default)
hints: []
cwlVersion: v1.1
baseCommand:
- findspl
