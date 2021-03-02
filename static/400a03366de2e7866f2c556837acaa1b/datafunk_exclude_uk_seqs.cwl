class: CommandLineTool
id: datafunk_exclude_uk_seqs.cwl
inputs:
- id: in_input_fast_a
  doc: Fasta file to read
  type: File?
  inputBinding:
    prefix: --input-fasta
- id: in_output_fast_a
  doc: "Fasta file to write\n"
  type: File?
  inputBinding:
    prefix: --output-fasta
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
- exclude_uk_seqs
