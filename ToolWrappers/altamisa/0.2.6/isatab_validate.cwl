class: CommandLineTool
id: isatab_validate.cwl
inputs:
- id: in_input_investigation_file
  doc: Path to input investigation file
  type: File?
  inputBinding:
    prefix: --input-investigation-file
- id: in_show_duplicate_warnings
  doc: "Show duplicated warnings, i.e. with same message and\nsame category (False\
    \ by default)\n"
  type: boolean?
  inputBinding:
    prefix: --show-duplicate-warnings
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- isatab_validate
