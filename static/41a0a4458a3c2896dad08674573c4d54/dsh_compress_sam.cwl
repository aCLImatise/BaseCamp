class: CommandLineTool
id: dsh_compress_sam.cwl
inputs:
- id: about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
- id: input_sam_file
  doc: '[class java.io.File]  input SAM file, default stdin [optional]'
  type: boolean
  inputBinding:
    prefix: --input-sam-file
- id: output_sam_file
  doc: '[class java.io.File]  output SAM file, default stdout [optional]'
  type: boolean
  inputBinding:
    prefix: --output-sam-file
outputs: []
cwlVersion: v1.1
baseCommand:
- dsh-compress-sam
