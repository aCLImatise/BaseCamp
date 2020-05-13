class: CommandLineTool
id: geo_generate_sample_sheet.py.cwl
inputs:
- id: series_matrix_file
  doc: The GEO series matrix file.
  type: File
  inputBinding:
    prefix: --series-matrix-file
- id: output_file
  doc: The output file.
  type: File
  inputBinding:
    prefix: --output-file
- id: log_file
  doc: Path of log file (if specified, report to stdout AND file.
  type: File
  inputBinding:
    prefix: --log-file
- id: quiet
  doc: Only output errors and warnings.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: Enable verbose output. Ignored if --quiet is specified.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- geo_generate_sample_sheet.py
