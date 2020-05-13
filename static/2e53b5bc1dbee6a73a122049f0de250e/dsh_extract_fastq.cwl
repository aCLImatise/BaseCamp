class: CommandLineTool
id: dsh_extract_fastq.cwl
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
- id: name
  doc: '[class java.lang.String]  exact sequence name to match [optional]'
  type: boolean
  inputBinding:
    prefix: --name
- id: description
  doc: '[class java.lang.String]  FASTQ description regex pattern to match [optional]'
  type: boolean
  inputBinding:
    prefix: --description
outputs: []
cwlVersion: v1.1
baseCommand:
- dsh-extract-fastq
