class: CommandLineTool
id: hamronize_csstar.cwl
inputs:
- id: in_format
  doc: Output format (tsv or json)
  type: string?
  inputBinding:
    prefix: --format
- id: in_output
  doc: Output location
  type: string?
  inputBinding:
    prefix: --output
- id: in_analysis_software_version
  doc: "Input string containing the analysis_software_version\nfor csstar"
  type: string?
  inputBinding:
    prefix: --analysis_software_version
- id: in_reference_database_version
  doc: "Input string containing the reference_database_version\nfor csstar"
  type: string?
  inputBinding:
    prefix: --reference_database_version
- id: in_input_file_name
  doc: Input string containing the input_file_name for csstar
  type: File?
  inputBinding:
    prefix: --input_file_name
- id: in_reference_database_id
  doc: "Input string containing the reference_database_id for\ncsstar\n"
  type: string?
  inputBinding:
    prefix: --reference_database_id
- id: in_report
  doc: Path to report(s)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hamronization:1.0.3--py_0
cwlVersion: v1.1
baseCommand:
- hamronize
- csstar
