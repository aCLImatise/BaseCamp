class: CommandLineTool
id: hamronize_summarize.cwl
inputs:
- id: in_summary_type
  doc: Which summary report format to generate
  type: string?
  inputBinding:
    prefix: --summary_type
- id: in_output
  doc: "Output file path for summary\n"
  type: File?
  inputBinding:
    prefix: --output
- id: in_ham_ron_ized_reports
  doc: list of hAMRonized reports
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file path for summary\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hamronization:1.0.3--py_0
cwlVersion: v1.1
baseCommand:
- hamronize
- summarize
