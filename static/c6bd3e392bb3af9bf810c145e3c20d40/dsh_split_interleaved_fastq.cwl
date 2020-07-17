class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dsh_split_interleaved_fastq.cwl
inputs:
- id: about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
- id: input_file
  doc: '[class java.io.File]  input interleaved FASTQ file, default stdin [optional]'
  type: boolean
  inputBinding:
    prefix: --input-file
- id: bytes
  doc: '[class java.lang.String]  split input file at next pair of records after each
    n bytes [optional]'
  type: boolean
  inputBinding:
    prefix: --bytes
- id: records
  doc: '[class java.lang.Long]  split input file after each n records, respecting
    pairs [optional]'
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
  doc: '[class java.lang.String]  output file suffix, e.g. .ifq.gz [optional]'
  type: boolean
  inputBinding:
    prefix: --suffix
outputs: []
cwlVersion: v1.1
baseCommand:
- dsh-split-interleaved-fastq
