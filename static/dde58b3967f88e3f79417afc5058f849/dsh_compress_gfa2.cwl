class: CommandLineTool
id: dsh_compress_gfa2.cwl
inputs:
- id: about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
- id: input_gfa2_file
  doc: '[class java.io.File]  input GFA 2.0 file, default stdin [optional]'
  type: boolean
  inputBinding:
    prefix: --input-gfa2-file
- id: output_gfa2_file
  doc: '[class java.io.File]  output GFA 2.0 file, default stdout [optional]'
  type: boolean
  inputBinding:
    prefix: --output-gfa2-file
outputs: []
cwlVersion: v1.1
baseCommand:
- dsh-compress-gfa2
