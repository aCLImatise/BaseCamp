class: CommandLineTool
id: ChainMatches.cwl
inputs:
- id: in_string_output_binary
  doc: '<string> : output file (binary)'
  type: File?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_string_output_binary
  doc: '<string> : output file (binary)'
  type: File?
  outputBinding:
    glob: $(inputs.in_string_output_binary)
hints: []
cwlVersion: v1.1
baseCommand:
- ChainMatches
