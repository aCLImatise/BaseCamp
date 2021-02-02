class: CommandLineTool
id: phyluce_ncbi_chunk_fasta_for_ncbi.cwl
inputs:
- id: in_input
  doc: ''
  type: string
  inputBinding:
    prefix: --input
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_ncbi_chunk_fasta_for_ncbi
