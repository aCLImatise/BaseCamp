class: CommandLineTool
id: biom_validate_table.cwl
inputs:
- id: in_input_fp
  doc: "The input filpath to validate against the BIOM\nformat specification  [required]"
  type: File?
  inputBinding:
    prefix: --input-fp
- id: in_format_version
  doc: The specific format version to validate against
  type: string?
  inputBinding:
    prefix: --format-version
- id: in_detailed_report
  doc: Include more details in the output report
  type: boolean?
  inputBinding:
    prefix: --detailed-report
- id: in_format_dot_org
  doc: 'Example usage:'
  type: string
  inputBinding:
    position: 0
- id: in_specification
  doc: $ biom validate-table -i table.biom
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- biom
- validate-table
