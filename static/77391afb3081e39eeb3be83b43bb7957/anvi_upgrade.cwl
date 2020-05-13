class: CommandLineTool
id: anvi_upgrade.cwl
inputs:
- id: repository
  doc: Source repository to download releases, currently only Github is supported.
    Enter in 'merenlab/anvio' format.
  type: string
  inputBinding:
    prefix: --repository
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-upgrade
