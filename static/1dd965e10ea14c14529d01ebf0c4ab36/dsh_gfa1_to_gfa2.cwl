class: CommandLineTool
id: dsh_gfa1_to_gfa2.cwl
inputs:
- id: about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
- id: input_gfa1_file
  doc: '[class java.io.File]  input GFA 1.0 file, default stdin [optional]'
  type: boolean
  inputBinding:
    prefix: --input-gfa1-file
- id: output_gfa2_file
  doc: '[class java.io.File]  output GFA 2.0 file, default stdout [optional]'
  type: boolean
  inputBinding:
    prefix: --output-gfa2-file
outputs: []
cwlVersion: v1.1
baseCommand:
- dsh-gfa1-to-gfa2
