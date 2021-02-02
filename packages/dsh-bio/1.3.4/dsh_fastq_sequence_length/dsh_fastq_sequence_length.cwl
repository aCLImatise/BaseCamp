class: CommandLineTool
id: dsh_fastq_sequence_length.cwl
inputs:
- id: in_about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
- id: in_fast_q_file
  doc: '[class java.io.File]  input FASTQ file, default stdin [optional]'
  type: boolean
  inputBinding:
    prefix: --fastq-file
- id: in_sequence_length_file
  doc: '[class java.io.File]  output file of sequence lengths, default stdout [optional]'
  type: File
  inputBinding:
    prefix: --sequence-length-file
- id: in_args
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_sequence_length_file
  doc: '[class java.io.File]  output file of sequence lengths, default stdout [optional]'
  type: File
  outputBinding:
    glob: $(inputs.in_sequence_length_file)
cwlVersion: v1.1
baseCommand:
- dsh-fastq-sequence-length
