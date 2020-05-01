#!/usr/bin/env cwl-runner

baseCommand:
- sra_find_experiment_runs.py
class: CommandLineTool
cwlVersion: v1.0
id: sra_find_experiment_runs.py
inputs:
- doc: File with SRA experiment IDs (starting with "SRX").
  id: experiment_file
  inputBinding:
    prefix: --experiment-file
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
