class: CommandLineTool
id: dsh_gfa1_to_gfa2.cwl
inputs:
- id: in_about
  doc: display about message [optional]
  type: boolean?
  inputBinding:
    prefix: --about
- id: in_input_gfa_one_file
  doc: '[class java.io.File]  input GFA 1.0 file, default stdin [optional]'
  type: boolean?
  inputBinding:
    prefix: --input-gfa1-file
- id: in_output_gfa_two_file
  doc: '[class java.io.File]  output GFA 2.0 file, default stdout [optional]'
  type: File?
  inputBinding:
    prefix: --output-gfa2-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_gfa_two_file
  doc: '[class java.io.File]  output GFA 2.0 file, default stdout [optional]'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_gfa_two_file)
hints: []
cwlVersion: v1.1
baseCommand:
- dsh-gfa1-to-gfa2
