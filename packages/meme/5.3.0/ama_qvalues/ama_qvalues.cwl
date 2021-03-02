class: CommandLineTool
id: ama_qvalues.cwl
inputs:
- id: in_copyright
  doc: (2010) The University of Queensland
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0
cwlVersion: v1.1
baseCommand:
- ama-qvalues
