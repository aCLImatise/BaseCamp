class: CommandLineTool
id: mfqe.cwl
inputs:
- id: output_uncompressed
  doc: 'Output sequences uncompressed [default: gzip compress outputs]'
  type: boolean
  inputBinding:
    prefix: --output-uncompressed
- id: input_fast_a
  doc: 'File containing uncompressed input FASTA sequences [default: Use STDIN]'
  type: string
  inputBinding:
    prefix: --input-fasta
- id: input_fast_q
  doc: 'File containing uncompressed input FASTQ sequences [default: Use STDIN]'
  type: string
  inputBinding:
    prefix: --input-fastq
- id: output_fast_a_files
  doc: '...          List of files to write FASTA to'
  type: string
  inputBinding:
    prefix: --output-fasta-files
- id: output_fast_q_files
  doc: '...          List of files to write FASTQ to'
  type: string
  inputBinding:
    prefix: --output-fastq-files
- id: sequence_name_lists
  doc: '...        List of files each containing sequence IDs'
  type: string
  inputBinding:
    prefix: --sequence-name-lists
outputs: []
cwlVersion: v1.1
baseCommand:
- mfqe
