class: CommandLineTool
id: datafunk_distance_to_root.cwl
inputs:
- id: in_input_fast_a
  doc: Fasta file to read. Must be aligned to Wuhan-Hu-1
  type: File?
  inputBinding:
    prefix: --input-fasta
- id: in_input_metadata
  doc: "Metadata to read. Must contain epi week information\n"
  type: string?
  inputBinding:
    prefix: --input-metadata
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
- distance_to_root
