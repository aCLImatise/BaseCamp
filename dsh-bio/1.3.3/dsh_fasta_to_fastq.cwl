class: CommandLineTool
id: dsh_fasta_to_fastq.cwl
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
- id: output_fast_q_file
  doc: '[class java.io.File]  output FASTQ file, default stdout [optional]'
  type: boolean
  inputBinding:
    prefix: --output-fastq-file
- id: quality
  doc: '[class java.lang.Integer]  quality score for FASTQ, [0..93], default 40 [optional]'
  type: boolean
  inputBinding:
    prefix: --quality
outputs: []
cwlVersion: v1.1
baseCommand:
- dsh-fasta-to-fastq
