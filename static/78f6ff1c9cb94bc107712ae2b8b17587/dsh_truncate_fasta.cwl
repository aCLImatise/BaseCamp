class: CommandLineTool
id: dsh_truncate_fasta.cwl
inputs:
- id: about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
- id: input_fast_a_file
  doc: '[class java.io.File]  input FASTA file, default stdin [optional]'
  type: boolean
  inputBinding:
    prefix: --input-fasta-file
- id: output_fast_a_file
  doc: '[class java.io.File]  output FASTA file, default stdout [optional]'
  type: boolean
  inputBinding:
    prefix: --output-fasta-file
- id: length
  doc: '[class java.lang.Integer]  length, default 10000 [optional]'
  type: boolean
  inputBinding:
    prefix: --length
- id: line_width
  doc: '[class java.lang.Integer]  line width, default 70 [optional]'
  type: boolean
  inputBinding:
    prefix: --line-width
outputs: []
cwlVersion: v1.1
baseCommand:
- dsh-truncate-fasta
