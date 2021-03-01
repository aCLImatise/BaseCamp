class: CommandLineTool
id: geo_generate_sample_sheet.py.cwl
inputs:
- id: in_series_matrix_file
  doc: The GEO series matrix file.
  type: File?
  inputBinding:
    prefix: --series-matrix-file
- id: in_output_file
  doc: The output file.
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_log_file
  doc: Path of log file (if specified, report to stdout AND file.
  type: File?
  inputBinding:
    prefix: --log-file
- id: in_quiet
  doc: Only output errors and warnings.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: Enable verbose output. Ignored if --quiet is specified.
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: The output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- geo_generate_sample_sheet.py
