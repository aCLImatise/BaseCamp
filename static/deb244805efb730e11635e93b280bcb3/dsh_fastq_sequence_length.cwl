class: CommandLineTool
id: dsh_fastq_sequence_length.cwl
inputs:
- id: about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
- id: fast_q_file
  doc: '[class java.io.File]  input FASTQ file, default stdin [optional]'
  type: boolean
  inputBinding:
    prefix: --fastq-file
- id: sequence_length_file
  doc: '[class java.io.File]  output file of sequence lengths, default stdout [optional]'
  type: boolean
  inputBinding:
    prefix: --sequence-length-file
outputs: []
cwlVersion: v1.1
baseCommand:
- dsh-fastq-sequence-length
