class: CommandLineTool
id: ../../../traitar_remove.cwl
inputs:
- id: keep
  doc: instead of remove the given phenotypes, keep them and forget the rest
  type: boolean
  inputBinding:
    prefix: --keep
outputs: []
cwlVersion: v1.1
baseCommand:
- traitar
- remove
