class: CommandLineTool
id: dsh_fastq_to_fasta.cwl
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
- id: output_fast_a_file
  doc: '[class java.io.File]  output FASTA file, default stdout [optional]'
  type: boolean
  inputBinding:
    prefix: --output-fasta-file
outputs: []
cwlVersion: v1.1
baseCommand:
- dsh-fastq-to-fasta
