class: CommandLineTool
id: iCount_segment.cwl
inputs:
- id: in_report_progress
  doc: 'Switch to show progress (default: False)'
  type: boolean
  inputBinding:
    prefix: --report_progress
- id: in__stdoutlog_threshold
  doc: ', --stdout_log     Threshold value (0-50) for logging to stdout. If 0, logging
    to stdout if turned OFF.'
  type: boolean
  inputBinding:
    prefix: -S
- id: in__filelog_threshold
  doc: ', --file_log       Threshold value (0-50) for logging to file. If 0, logging
    to file if turned OFF.'
  type: boolean
  inputBinding:
    prefix: -F
- id: in__filelogpath_path
  doc: ', --file_logpath   Path to log file.'
  type: boolean
  inputBinding:
    prefix: -P
- id: in__file_store
  doc: ', --results_file   File into which to store Metrics.'
  type: boolean
  inputBinding:
    prefix: -M
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
cwlVersion: v1.1
baseCommand:
- iCount
- segment
