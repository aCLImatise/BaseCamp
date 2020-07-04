class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/traitar_show.cwl
inputs:
- id: models_f
  doc: phenotype models archive; if set, look for the target in the phenotype in the
    given phenotype collection
  type: string
  inputBinding:
    prefix: --models_f
- id: phenotype
  doc: phenotype under investigation
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- traitar
- show
