class: CommandLineTool
id: biom_validate_table.cwl
inputs:
- id: validate
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: the
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: contents
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: of
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: table_biom
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: for
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: adherence
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: to
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: the
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: biom
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: format
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: input_fp
  doc: The input filpath to validate against the BIOM format specification  [required]
  type: File
  inputBinding:
    prefix: --input-fp
- id: format_version
  doc: The specific format version to validate against
  type: string
  inputBinding:
    prefix: --format-version
- id: detailed_report
  doc: Include more details in the output report
  type: boolean
  inputBinding:
    prefix: --detailed-report
outputs: []
cwlVersion: v1.1
baseCommand:
- biom
- validate-table
