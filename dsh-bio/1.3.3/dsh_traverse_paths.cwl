class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dsh_traverse_paths.cwl
inputs:
- id: about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
- id: input_gfa_one_file
  doc: '[class java.io.File]  input GFA 1.0 file, default stdin [optional]'
  type: boolean
  inputBinding:
    prefix: --input-gfa1-file
- id: output_gfa_one_file
  doc: '[class java.io.File]  output GFA 1.0 file, default stdout [optional]'
  type: boolean
  inputBinding:
    prefix: --output-gfa1-file
- id: args
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- dsh-traverse-paths
