class: CommandLineTool
id: ../../../add_errors.py.cwl
inputs:
- id: in_number_errors_introduce
  doc: Number of errors to introduce (0).
  type: long
  inputBinding:
    prefix: -n
- id: in_error_type_substitution
  doc: 'Error type: substitution, insertion or deletion.'
  type: string
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- add_errors.py
