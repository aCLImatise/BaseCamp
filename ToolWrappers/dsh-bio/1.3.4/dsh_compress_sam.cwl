class: CommandLineTool
id: dsh_compress_sam.cwl
inputs:
- id: in_about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
- id: in_input_sam_file
  doc: '[class java.io.File]  input SAM file, default stdin [optional]'
  type: boolean
  inputBinding:
    prefix: --input-sam-file
- id: in_output_sam_file
  doc: '[class java.io.File]  output SAM file, default stdout [optional]'
  type: File
  inputBinding:
    prefix: --output-sam-file
- id: in_args
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_sam_file
  doc: '[class java.io.File]  output SAM file, default stdout [optional]'
  type: File
  outputBinding:
    glob: $(inputs.in_output_sam_file)
cwlVersion: v1.1
baseCommand:
- dsh-compress-sam
