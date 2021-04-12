class: CommandLineTool
id: rbt_fastq_split.cwl
inputs:
- id: in_chunks
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rust-bio-tools:0.20.3--h4eb7995_3
cwlVersion: v1.1
baseCommand:
- rbt
- fastq-split
