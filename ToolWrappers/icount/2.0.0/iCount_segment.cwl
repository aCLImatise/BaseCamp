class: CommandLineTool
id: iCount_segment.cwl
inputs:
- id: in_report_progress
  doc: 'Switch to show progress (default: False)'
  type: boolean?
  inputBinding:
    prefix: --report_progress
- id: in_stdout_log
  doc: Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned
    OFF.
  type: boolean?
  inputBinding:
    prefix: --stdout_log
- id: in_file_log
  doc: Threshold value (0-50) for logging to file. If 0, logging to file if turned
    OFF.
  type: boolean?
  inputBinding:
    prefix: --file_log
- id: in_file_log_path
  doc: Path to log file.
  type: boolean?
  inputBinding:
    prefix: --file_logpath
- id: in_results_file
  doc: File into which to store Metrics.
  type: boolean?
  inputBinding:
    prefix: --results_file
- id: in_annotation
  doc: Path to input GTF file
  type: string
  inputBinding:
    position: 0
- id: in_segmentation
  doc: Path to output GTF file
  type: string
  inputBinding:
    position: 1
- id: in_fai
  doc: Path to input genome_file (.fai or similar)
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- iCount
- segment
