class: CommandLineTool
id: fasta_check.cwl
inputs:
- id: in_hyphen
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -hyphen
- id: in_aa
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -aa
- id: in_in
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
  dockerPull: quay.io/biocontainers/ncbi-amrfinderplus:3.9.8--h671e170_0
cwlVersion: v1.1
baseCommand:
- fasta_check
