#!/usr/bin/env cwl-runner

baseCommand:
- geo_generate_sample_sheet.py
class: CommandLineTool
cwlVersion: v1.0
id: geo_generate_sample_sheet.py
inputs:
- doc: The GEO series matrix file.
  id: series_matrix_file
  inputBinding:
    prefix: --series-matrix-file
  type: File
- doc: The output file.
  id: output_file
  inputBinding:
    prefix: --output-file
  type: File
- doc: Path of log file (if specified, report to stdout AND file.
  id: log_file
  inputBinding:
    prefix: --log-file
  type: File
- doc: Only output errors and warnings.
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: Enable verbose output. Ignored if --quiet is specified.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
