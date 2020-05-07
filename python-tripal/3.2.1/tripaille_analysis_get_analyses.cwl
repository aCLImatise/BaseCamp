class: CommandLineTool
id: tripaille_analysis_get_analyses.cwl
inputs:
- id: analysis_id
  doc: An analysis ID
  type: string
  inputBinding:
    prefix: --analysis_id
- id: name
  doc: analysis name
  type: string
  inputBinding:
    prefix: --name
- id: program
  doc: analysis program
  type: string
  inputBinding:
    prefix: --program
- id: program_version
  doc: analysis programversion
  type: string
  inputBinding:
    prefix: --programversion
- id: algorithm
  doc: analysis algorithm
  type: string
  inputBinding:
    prefix: --algorithm
- id: source_name
  doc: analysis sourcename
  type: string
  inputBinding:
    prefix: --sourcename
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
- get_analyses
