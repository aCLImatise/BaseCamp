class: CommandLineTool
id: ace2sam.cwl
inputs:
- id: in_output_padded_sam
  doc: output padded SAM
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_write_contig_sequence
  doc: write the contig sequence in SAM
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_pc
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -pc
- id: in_in_dot_ace
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/samtools:1.11--h6270b1f_0
cwlVersion: v1.1
baseCommand:
- ace2sam
