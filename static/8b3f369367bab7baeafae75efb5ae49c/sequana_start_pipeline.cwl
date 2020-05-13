class: CommandLineTool
id: sequana_start_pipeline.cwl
inputs:
- id: force
  doc: Force the creation to overwrite existing directory and contents
  type: boolean
  inputBinding:
    prefix: --force
- id: name
  doc: Name of your project. For instance for sequana_analysis, just type 'analysis'
  type: string
  inputBinding:
    prefix: --name
- id: keywords
  doc: Keywords (you can edit later)
  type: string
  inputBinding:
    prefix: --keywords
- id: description
  doc: description of your future pipeline (you can still edit later)
  type: string
  inputBinding:
    prefix: --description
outputs: []
cwlVersion: v1.1
baseCommand:
- sequana_start_pipeline
