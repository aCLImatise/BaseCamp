class: CommandLineTool
id: dsh_rename_references.cwl
inputs:
- id: about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
- id: chr
  doc: add "chr" to chromosome names [optional]
  type: boolean
  inputBinding:
    prefix: --chr
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
- dsh-rename-references
