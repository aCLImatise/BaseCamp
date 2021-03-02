class: CommandLineTool
id: gff_check.cwl
inputs:
- id: in_gff
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
- gff_check
