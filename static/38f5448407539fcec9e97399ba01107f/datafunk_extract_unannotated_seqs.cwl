class: CommandLineTool
id: datafunk_extract_unannotated_seqs.cwl
inputs:
- id: in_input_fast_a
  doc: fasta file to extract sequences from
  type: File?
  inputBinding:
    prefix: --input-fasta
- id: in_input_metadata
  doc: metadata whose columns and rows will be checked
  type: string?
  inputBinding:
    prefix: --input-metadata
- id: in_null_column
  doc: metadata column which will be checked as empty
  type: string?
  inputBinding:
    prefix: --null-column
- id: in_index_column
  doc: metadata column to match to fasta file
  type: File?
  inputBinding:
    prefix: --index-column
- id: in_output_fast_a
  doc: "fasta file to write\n"
  type: File?
  inputBinding:
    prefix: --output-fasta
- id: in_output_metadata
  doc: ''
  type: File?
  inputBinding:
    prefix: --output-metadata
- id: in_output_tree
  doc: ''
  type: File?
  inputBinding:
    prefix: --output-tree
- id: in_input_tree
  doc: ''
  type: File?
  inputBinding:
    prefix: --input-tree
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- datafunk
- extract_unannotated_seqs
