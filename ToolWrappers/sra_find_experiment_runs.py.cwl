class: CommandLineTool
id: sra_find_experiment_runs.py.cwl
inputs:
- id: in_experiment_file
  doc: File with SRA experiment IDs (starting with "SRX").
  type: File
  inputBinding:
    prefix: --experiment-file
- id: in_output_file
  doc: The output file.
  type: File
  inputBinding:
    prefix: --output-file
- id: in_log_file
  doc: Path of log file (if specified, report to stdout AND file.
  type: File
  inputBinding:
    prefix: --log-file
- id: in_quiet
  doc: Only output errors and warnings.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: Enable verbose output. Ignored if --quiet is specified.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: The output file.
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- sra_find_experiment_runs.py
