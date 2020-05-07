class: CommandLineTool
id: isatab_validate.cwl
inputs:
- id: input_investigation_file
  doc: Path to input investigation file
  type: string
  inputBinding:
    prefix: --input-investigation-file
- id: show_duplicate_warnings
  doc: Show duplicated warnings, i.e. with same message and same category (False by
    default)
  type: boolean
  inputBinding:
    prefix: --show-duplicate-warnings
outputs: []
cwlVersion: v1.1
baseCommand:
- isatab_validate
