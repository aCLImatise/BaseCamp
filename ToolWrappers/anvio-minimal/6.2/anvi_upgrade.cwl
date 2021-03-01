class: CommandLineTool
id: anvi_upgrade.cwl
inputs:
- id: in_repository
  doc: "Source repository to download releases, currently only\nGithub is supported.\
    \ Enter in 'merenlab/anvio' format.\n"
  type: string?
  inputBinding:
    prefix: --repository
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- anvi-upgrade
