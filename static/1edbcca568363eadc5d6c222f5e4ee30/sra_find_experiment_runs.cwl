class: CommandLineTool
id: sra_find_experiment_runs.py.cwl
inputs:
- id: experiment_file
  doc: File with SRA experiment IDs (starting with "SRX").
  type: File
  inputBinding:
    prefix: --experiment-file
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
- sra_find_experiment_runs.py
