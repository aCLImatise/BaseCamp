class: CommandLineTool
id: datafunk_get_CDS.cwl
inputs:
- id: in_input_fast_a
  doc: Fasta file to read
  type: File?
  inputBinding:
    prefix: --input-fasta
- id: in_output_fast_a
  doc: Fasta file to write. Prints to stdout if not specified
  type: File?
  inputBinding:
    prefix: --output-fasta
- id: in_translate
  doc: output amino acid sequence (default is nucleotides)
  type: boolean?
  inputBinding:
    prefix: --translate
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
- get_CDS
