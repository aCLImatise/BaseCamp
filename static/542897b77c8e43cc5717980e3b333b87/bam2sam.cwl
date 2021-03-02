class: CommandLineTool
id: bam2sam.cwl
inputs:
- id: in_no_header
  doc: Omit header from output.
  type: boolean?
  inputBinding:
    prefix: --no-header
- id: in_header_only
  doc: Print only the header (no records).
  type: boolean?
  inputBinding:
    prefix: --header-only
- id: in_in_dot_bam
  doc: FILE  Input BAM file. If not provided, stdin will be used as input.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pbbam:1.6.0--h5b7e6e0_0
cwlVersion: v1.1
baseCommand:
- bam2sam
