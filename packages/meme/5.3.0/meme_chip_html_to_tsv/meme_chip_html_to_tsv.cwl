class: CommandLineTool
id: meme_chip_html_to_tsv.cwl
inputs:
- id: in_meme_chip_html_file
  doc: ''
  type: File
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
- meme-chip_html_to_tsv
