class: CommandLineTool
id: dsh_extract_fastq_by_length.cwl
inputs:
- id: about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
- id: input_fast_q_file
  doc: '[class java.io.File]  input FASTQ file, default stdin [optional]'
  type: boolean
  inputBinding:
    prefix: --input-fastq-file
- id: output_fast_q_file
  doc: '[class java.io.File]  output FASTQ file, default stdout [optional]'
  type: boolean
  inputBinding:
    prefix: --output-fastq-file
- id: minimum_length
  doc: '[class java.lang.Integer]  minimum sequence length, inclusive [required]'
  type: boolean
  inputBinding:
    prefix: --minimum-length
- id: maximum_length
  doc: '[class java.lang.Integer]  maximum sequence length, exclusive [required]'
  type: boolean
  inputBinding:
    prefix: --maximum-length
outputs: []
cwlVersion: v1.1
baseCommand:
- dsh-extract-fastq-by-length
