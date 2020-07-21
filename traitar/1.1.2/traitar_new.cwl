class: CommandLineTool
id: ../../../traitar_new.cwl
inputs:
- id: hmm_model_f
  doc: hmm database compatible with the phenotype archive
  type: string
  inputBinding:
    position: 0
- id: archive_name
  doc: name of the model, which is created
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- traitar
- new
