class: CommandLineTool
id: pyfastx_index.cwl
inputs:
- id: in_full
  doc: build full index, base composition will be calculated
  type: boolean?
  inputBinding:
    prefix: --full
- id: in_fast_x
  doc: fasta or fastq file, gzip support
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pyfastx:0.8.2--py36h955c1b8_0
cwlVersion: v1.1
baseCommand:
- pyfastx
- index
