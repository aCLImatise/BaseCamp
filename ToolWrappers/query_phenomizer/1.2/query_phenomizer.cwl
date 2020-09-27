class: CommandLineTool
id: query_phenomizer.cwl
inputs:
- id: in_username
  doc: A username for phenomizer
  type: string
  inputBinding:
    prefix: --username
- id: in_password
  doc: A password for phenomizer
  type: string
  inputBinding:
    prefix: --password
- id: in_check_terms
  doc: Check if the term(s) exist
  type: boolean
  inputBinding:
    prefix: --check-terms
- id: in_output
  doc: Specify the path to a file for storing the phenomizer
  type: File
  inputBinding:
    prefix: --output
- id: in_to_json
  doc: "If result should be printed to json format\n-v, --verbose\n--help        \
    \         Show this message and exit.\n"
  type: boolean
  inputBinding:
    prefix: --to-json
- id: in_output_dot
  doc: --p-value-limit FLOAT  Specify the highest p-value that you want included.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- query_phenomizer
