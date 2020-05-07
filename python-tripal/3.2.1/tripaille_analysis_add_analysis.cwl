class: CommandLineTool
id: tripaille_analysis_add_analysis.cwl
inputs:
- id: algorithm
  doc: analysis algorithm
  type: string
  inputBinding:
    prefix: --algorithm
- id: source_version
  doc: analysis sourceversion
  type: string
  inputBinding:
    prefix: --sourceversion
- id: source_uri
  doc: analysis sourceuri
  type: string
  inputBinding:
    prefix: --sourceuri
- id: description
  doc: analysis description
  type: string
  inputBinding:
    prefix: --description
- id: date_executed
  doc: analysis date_executed (yyyy-mm-dd)
  type: string
  inputBinding:
    prefix: --date_executed
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- analysis
- add_analysis
