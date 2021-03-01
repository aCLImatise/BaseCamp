class: CommandLineTool
id: fastqmd5.cwl
inputs:
- id: in_cat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_reads_dot_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/quip:1.1.8--hed695b0_0
cwlVersion: v1.1
baseCommand:
- fastqmd5
