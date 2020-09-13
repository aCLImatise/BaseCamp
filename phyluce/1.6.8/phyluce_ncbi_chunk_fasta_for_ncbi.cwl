class: CommandLineTool
id: ../../../phyluce_ncbi_chunk_fasta_for_ncbi.cwl
inputs:
- id: in_input
  doc: The input FASTA
  type: string
  inputBinding:
    prefix: --input
- id: in_chunk_size
  doc: ''
  type: long
  inputBinding:
    prefix: --chunk-size
- id: in_output_prefix
  doc: ''
  type: string
  inputBinding:
    prefix: --output-prefix
- id: in_output_suffix
  doc: ''
  type: string
  inputBinding:
    prefix: --output-suffix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_ncbi_chunk_fasta_for_ncbi
