class: CommandLineTool
id: dsh_compress_bed.cwl
inputs:
- id: about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
- id: input_bed_file
  doc: '[class java.io.File]  input BED file, default stdin [optional]'
  type: boolean
  inputBinding:
    prefix: --input-bed-file
- id: output_bed_file
  doc: '[class java.io.File]  output BED file, default stdout [optional]'
  type: boolean
  inputBinding:
    prefix: --output-bed-file
outputs: []
cwlVersion: v1.1
baseCommand:
- dsh-compress-bed
