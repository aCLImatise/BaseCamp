class: CommandLineTool
id: ma.cwl
inputs:
- id: in_format_output_pipe
  doc: format 6 output -> don't pipe this output to file!
  type: File?
  inputBinding:
    prefix: -C
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_format_output_pipe
  doc: format 6 output -> don't pipe this output to file!
  type: File?
  outputBinding:
    glob: $(inputs.in_format_output_pipe)
hints: []
cwlVersion: v1.1
baseCommand:
- ma
