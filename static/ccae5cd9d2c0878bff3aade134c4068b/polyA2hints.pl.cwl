class: CommandLineTool
id: polyA2hints.pl.cwl
inputs:
- id: in_swap_strand
  doc: swap strand, currently use this for polyT files
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0
cwlVersion: v1.1
baseCommand:
- polyA2hints.pl
