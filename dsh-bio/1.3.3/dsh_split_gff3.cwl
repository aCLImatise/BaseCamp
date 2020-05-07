class: CommandLineTool
id: dsh_split_gff3.cwl
inputs:
- id: about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
- id: input_file
  doc: '[class java.io.File]  input GFF3 file, default stdin [optional]'
  type: boolean
  inputBinding:
    prefix: --input-file
- id: bytes
  doc: '[class java.lang.String]  split input file at next record after each n bytes
    [optional]'
  type: boolean
  inputBinding:
    prefix: --bytes
- id: records
  doc: '[class java.lang.Long]  split input file after each n records [optional]'
  type: boolean
  inputBinding:
    prefix: --records
- id: prefix
  doc: '[class java.lang.String]  output file prefix [optional]'
  type: boolean
  inputBinding:
    prefix: --prefix
- id: left_pad
  doc: '[class java.lang.Integer]  left pad split index in output file name [optional]'
  type: boolean
  inputBinding:
    prefix: --left-pad
- id: suffix
  doc: '[class java.lang.String]  output file suffix, e.g. .gff3.gz [optional]'
  type: boolean
  inputBinding:
    prefix: --suffix
outputs: []
cwlVersion: v1.1
baseCommand:
- dsh-split-gff3
