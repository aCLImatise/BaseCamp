class: CommandLineTool
id: tripaille_analysis_get_analyses.cwl
inputs:
- id: in_analysis_id
  doc: An analysis ID
  type: string
  inputBinding:
    prefix: --analysis_id
- id: in_name
  doc: analysis name
  type: string
  inputBinding:
    prefix: --name
- id: in_program
  doc: analysis program
  type: string
  inputBinding:
    prefix: --program
- id: in_program_version
  doc: analysis programversion
  type: string
  inputBinding:
    prefix: --programversion
- id: in_algorithm
  doc: analysis algorithm
  type: string
  inputBinding:
    prefix: --algorithm
- id: in_source_name
  doc: analysis sourcename
  type: string
  inputBinding:
    prefix: --sourcename
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
- id: in_date_executed
  doc: analysis date_executed (yyyy-mm-dd)
  type: string
  inputBinding:
    prefix: --date_executed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tripaille
- analysis
- get_analyses
