class: CommandLineTool
id: hart2meme_bkg.cwl
inputs:
- id: in_hart_two_meme_bkg
  doc: Convert a Hartemink style conditional probability file into
  type: long
  inputBinding:
    position: 0
- id: in_copyright
  doc: (2008) The University of Queensland
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
- hart2meme-bkg
