class: CommandLineTool
id: dsh_compress_gff3.cwl
inputs:
- id: in_about
  doc: display about message [optional]
  type: boolean?
  inputBinding:
    prefix: --about
- id: in_input_gff_three_file
  doc: '[class java.io.File]  input GFF3 file, default stdin [optional]'
  type: boolean?
  inputBinding:
    prefix: --input-gff3-file
- id: in_output_gff_three_file
  doc: '[class java.io.File]  output GFF3 file, default stdout [optional]'
  type: File?
  inputBinding:
    prefix: --output-gff3-file
- id: in_args
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_gff_three_file
  doc: '[class java.io.File]  output GFF3 file, default stdout [optional]'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_gff_three_file)
hints: []
cwlVersion: v1.1
baseCommand:
- dsh-compress-gff3
