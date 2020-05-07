class: CommandLineTool
id: dsh_compress_gff3.cwl
inputs:
- id: about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
- id: input_gff3_file
  doc: '[class java.io.File]  input GFF3 file, default stdin [optional]'
  type: boolean
  inputBinding:
    prefix: --input-gff3-file
- id: output_gff3_file
  doc: '[class java.io.File]  output GFF3 file, default stdout [optional]'
  type: boolean
  inputBinding:
    prefix: --output-gff3-file
outputs: []
cwlVersion: v1.1
baseCommand:
- dsh-compress-gff3
