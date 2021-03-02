class: CommandLineTool
id: iCount_annotate.cwl
inputs:
- id: in_subtype
  doc: 'Subtype (default: biotype)'
  type: boolean?
  inputBinding:
    prefix: --subtype
- id: in_excluded_types_default
  doc: "[ ...], --excluded_types  [ ...]\nExcluded types (default: None)"
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
  doc: Path to annotation file (should be GTF and include `subtype` attribute)
  type: string
  inputBinding:
    position: 0
- id: in_sites
  doc: Path to input BED6 file listing all cross-linked sites
  type: string
  inputBinding:
    position: 1
- id: in_sites_annotated
  doc: Path to output BED6 file listing annotated cross-linked sites
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
- annotate
