class: CommandLineTool
id: dsh_compress_gfa1.cwl
inputs:
- id: in_about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
- id: in_input_gfa_one_file
  doc: '[class java.io.File]  input GFA 1.0 file, default stdin [optional]'
  type: boolean
  inputBinding:
    prefix: --input-gfa1-file
- id: in_output_gfa_one_file
  doc: '[class java.io.File]  output GFA 1.0 file, default stdout [optional]'
  type: File
  inputBinding:
    prefix: --output-gfa1-file
- id: in_args
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_gfa_one_file
  doc: '[class java.io.File]  output GFA 1.0 file, default stdout [optional]'
  type: File
  outputBinding:
    glob: $(inputs.in_output_gfa_one_file)
cwlVersion: v1.1
baseCommand:
- dsh-compress-gfa1
