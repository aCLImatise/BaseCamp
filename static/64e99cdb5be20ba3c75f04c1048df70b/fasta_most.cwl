class: CommandLineTool
id: fasta_most.cwl
inputs:
- id: in_min
  doc: <length>  minimum length to accept
  type: boolean?
  inputBinding:
    prefix: -min
- id: in_max
  doc: <length>  maximum length to accept
  type: boolean?
  inputBinding:
    prefix: -max
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0
cwlVersion: v1.1
baseCommand:
- fasta-most
