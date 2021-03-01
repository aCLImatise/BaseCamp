class: CommandLineTool
id: datafunk_mask.cwl
inputs:
- id: in_input_fast_a
  doc: Fasta file to mask
  type: File?
  inputBinding:
    prefix: --input-fasta
- id: in_output_fast_a
  doc: Fasta file to write
  type: File?
  inputBinding:
    prefix: --output-fasta
- id: in_masktxt__maskfile
  doc: ", mask.txt, --mask-file mask.txt\nFile with mask instructions to parse\n"
  type: boolean?
  inputBinding:
    prefix: -m
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
- mask
