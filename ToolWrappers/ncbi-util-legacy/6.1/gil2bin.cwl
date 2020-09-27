class: CommandLineTool
id: gil2bin.cwl
inputs:
- id: in_input_gilist
  doc: Input gilist [File In]
  type: boolean
  inputBinding:
    prefix: -i
- id: in_output_binary_gilist
  doc: output (binary) gilist [File In]
  type: File
  inputBinding:
    prefix: -o
- id: in_reverse_mode_binary
  doc: "Reverse mode (binary to text) [T/F]  Optional\ndefault = F\n"
  type: boolean
  inputBinding:
    prefix: -r
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_binary_gilist
  doc: output (binary) gilist [File In]
  type: File
  outputBinding:
    glob: $(inputs.in_output_binary_gilist)
cwlVersion: v1.1
baseCommand:
- gil2bin
