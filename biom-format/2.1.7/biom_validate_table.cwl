class: CommandLineTool
id: ../../../biom_validate_table.cwl
inputs:
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
