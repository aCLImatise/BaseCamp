class: CommandLineTool
id: seqtest.cwl
inputs:
- id: in_filename_asn_input
  doc: "Filename for asn.1 input [File In]\ndefault = stdin"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_filename_output_stdout
  doc: "Filename for output [File Out]  Optional\ndefault = stdout\n"
  type: File?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_filename_output_stdout
  doc: "Filename for output [File Out]  Optional\ndefault = stdout\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_filename_output_stdout)
hints: []
cwlVersion: v1.1
baseCommand:
- seqtest
