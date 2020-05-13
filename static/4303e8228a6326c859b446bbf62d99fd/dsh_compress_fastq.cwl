class: CommandLineTool
id: dsh_compress_fastq.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- dsh-compress-fastq
