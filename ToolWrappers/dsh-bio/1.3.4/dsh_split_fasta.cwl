class: CommandLineTool
id: dsh_split_fasta.cwl
inputs:
- id: in_about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
- id: in_input_file
  doc: '[class java.io.File]  input FASTA file, default stdin [optional]'
  type: boolean
  inputBinding:
    prefix: --input-file
- id: in_bytes
  doc: '[class java.lang.String]  split input file at next record after each n bytes
    [optional]'
  type: boolean
  inputBinding:
    prefix: --bytes
- id: in_records
  doc: '[class java.lang.Long]  split input file after each n records [optional]'
  type: boolean
  inputBinding:
    prefix: --records
- id: in_prefix
  doc: '[class java.lang.String]  output file prefix [optional]'
  type: File
  inputBinding:
    prefix: --prefix
- id: in_left_pad
  doc: '[class java.lang.Integer]  left pad split index in output file name [optional]'
  type: boolean
  inputBinding:
    prefix: --left-pad
- id: in_suffix
  doc: '[class java.lang.String]  output file suffix, e.g. .fa.gz [optional]'
  type: File
  inputBinding:
    prefix: --suffix
- id: in_line_width
  doc: '[class java.lang.Integer]  line width, default 70 [optional]'
  type: boolean
  inputBinding:
    prefix: --line-width
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: '[class java.lang.String]  output file prefix [optional]'
  type: File
  outputBinding:
    glob: $(inputs.in_prefix)
- id: out_suffix
  doc: '[class java.lang.String]  output file suffix, e.g. .fa.gz [optional]'
  type: File
  outputBinding:
    glob: $(inputs.in_suffix)
cwlVersion: v1.1
baseCommand:
- dsh-split-fasta
