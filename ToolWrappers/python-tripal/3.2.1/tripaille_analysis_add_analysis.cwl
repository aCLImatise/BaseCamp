class: CommandLineTool
id: tripaille_analysis_add_analysis.cwl
inputs:
- id: in_algorithm
  doc: analysis algorithm
  type: string
  inputBinding:
    prefix: --algorithm
- id: in_source_version
  doc: analysis sourceversion
  type: string
  inputBinding:
    prefix: --sourceversion
- id: in_source_uri
  doc: analysis sourceuri
  type: string
  inputBinding:
    prefix: --sourceuri
- id: in_description
  doc: analysis description
  type: string
  inputBinding:
    prefix: --description
- id: in_date_executed
  doc: analysis date_executed (yyyy-mm-dd)
  type: string
  inputBinding:
    prefix: --date_executed
- id: in_source_name
  doc: Create an analysis
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tripaille
- analysis
- add_analysis
