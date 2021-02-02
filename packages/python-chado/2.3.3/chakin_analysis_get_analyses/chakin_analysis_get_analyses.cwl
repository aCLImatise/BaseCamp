class: CommandLineTool
id: chakin_analysis_get_analyses.cwl
inputs:
- id: in_analysis_id
  doc: analysis_id filter
  type: long
  inputBinding:
    prefix: --analysis_id
- id: in_name
  doc: analysis name filter
  type: string
  inputBinding:
    prefix: --name
- id: in_program
  doc: analysis program filter
  type: string
  inputBinding:
    prefix: --program
- id: in_program_version
  doc: analysis programversion filter
  type: string
  inputBinding:
    prefix: --programversion
- id: in_algorithm
  doc: analysis algorithm filter
  type: string
  inputBinding:
    prefix: --algorithm
- id: in_source_name
  doc: analysis sourcename filter
  type: string
  inputBinding:
    prefix: --sourcename
- id: in_source_version
  doc: analysis sourceversion filter
  type: string
  inputBinding:
    prefix: --sourceversion
- id: in_source_uri
  doc: analysis sourceuri filter
  type: string
  inputBinding:
    prefix: --sourceuri
- id: in_description
  doc: analysis description
  type: string
  inputBinding:
    prefix: --description
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- chakin
- analysis
- get_analyses
