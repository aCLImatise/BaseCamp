class: CommandLineTool
id: mfqe.cwl
inputs:
- id: in_input_fast_q
  doc: ': Use this file as input FASTQ [default: Use STDIN]'
  type: File?
  inputBinding:
    prefix: --input-fastq
- id: in_output_uncompressed
  doc: 'Output sequences uncompressed [default: gzip compress outputs]'
  type: boolean?
  inputBinding:
    prefix: --output-uncompressed
- id: in_fast_a_read_name_lists
  doc: "...\nList of files each containing sequence IDs [alias for --sequence-name-lists]"
  type: string?
  inputBinding:
    prefix: --fasta-read-name-lists
- id: in_fast_q_read_name_lists
  doc: "...\nList of files each containing sequence IDs [alias for --sequence-name-lists]"
  type: string?
  inputBinding:
    prefix: --fastq-read-name-lists
- id: in_input_fast_a
  doc: 'File containing uncompressed input FASTA sequences [default: Use STDIN]'
  type: File?
  inputBinding:
    prefix: --input-fasta
- id: in_output_fast_a_files
  doc: '...          List of files to write FASTA to'
  type: string?
  inputBinding:
    prefix: --output-fasta-files
- id: in_output_fast_q_files
  doc: '...          List of files to write FASTQ to'
  type: string?
  inputBinding:
    prefix: --output-fastq-files
- id: in_sequence_name_lists
  doc: '...        List of files each containing sequence IDs'
  type: string?
  inputBinding:
    prefix: --sequence-name-lists
- id: in_usage
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mfqe
