class: CommandLineTool
id: ../../../dsh_rename_references.cwl
inputs:
- id: in_about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
- id: in_chr
  doc: add "chr" to chromosome names [optional]
  type: boolean
  inputBinding:
    prefix: --chr
- id: in_input_gff_three_file
  doc: '[class java.io.File]  input GFF3 file, default stdin [optional]'
  type: boolean
  inputBinding:
    prefix: --input-gff3-file
- id: in_output_gff_three_file
  doc: '[class java.io.File]  output GFF3 file, default stdout [optional]'
  type: File
  inputBinding:
    prefix: --output-gff3-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_gff_three_file
  doc: '[class java.io.File]  output GFF3 file, default stdout [optional]'
  type: File
  outputBinding:
    glob: $(inputs.in_output_gff_three_file)
cwlVersion: v1.1
baseCommand:
- dsh-rename-references
