class: CommandLineTool
id: dsh_fasta_to_fastq.cwl
inputs:
- id: in_about
  doc: display about message [optional]
  type: boolean
  inputBinding:
    prefix: --about
- id: in_input_fast_a_file
  doc: '[class java.io.File]  input FASTA file, default stdin [optional]'
  type: boolean
  inputBinding:
    prefix: --input-fasta-file
- id: in_output_fast_q_file
  doc: '[class java.io.File]  output FASTQ file, default stdout [optional]'
  type: File
  inputBinding:
    prefix: --output-fastq-file
- id: in_quality
  doc: '[class java.lang.Integer]  quality score for FASTQ, [0..93], default 40 [optional]'
  type: boolean
  inputBinding:
    prefix: --quality
- id: in_args
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fast_q_file
  doc: '[class java.io.File]  output FASTQ file, default stdout [optional]'
  type: File
  outputBinding:
    glob: $(inputs.in_output_fast_q_file)
cwlVersion: v1.1
baseCommand:
- dsh-fasta-to-fastq
