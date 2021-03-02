class: CommandLineTool
id: htseq_count.cwl
inputs:
- id: in_alignment_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_gff_file
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
  dockerPull: quay.io/biocontainers/htseq:0.13.5--py37h0498b6d_0
cwlVersion: v1.1
baseCommand:
- htseq-count
