class: CommandLineTool
id: iCount_summary.cwl
inputs:
- id: in_types_length_file
  doc: 'Path to file with lengths of each type (default: None)'
  type: boolean?
  inputBinding:
    prefix: --types_length_file
- id: in_digits
  doc: 'Number of decimal places in results (default: 8)'
  type: boolean?
  inputBinding:
    prefix: --digits
- id: in_subtype
  doc: 'Name of attribute to be used as subtype (default: None)'
  type: boolean?
  inputBinding:
    prefix: --subtype
- id: in_types_listed_be
  doc: "[ ...], --excluded_types  [ ...]\nTypes listed in 3rd column of GTF to be\
    \ exclude from analysis (default: None)"
  type: boolean?
  inputBinding:
    prefix: -e
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
  doc: Path to annotation GTF file (should include subtype attribute)
  type: string
  inputBinding:
    position: 0
- id: in_sites
  doc: Path to BED6 file listing cross-linked sites
  type: string
  inputBinding:
    position: 1
- id: in_summary
  doc: Path to output tab-delimited file with summary statistics
  type: string
  inputBinding:
    position: 2
- id: in_fai
  doc: Path to file with chromosome lengths
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- iCount
- summary
