class: CommandLineTool
id: iCount_annotate.cwl
inputs:
- id: in_subtype
  doc: 'Subtype (default: biotype)'
  type: boolean
  inputBinding:
    prefix: --subtype
- id: in_excluded_types_default
  doc: "[ ...], --excluded_types  [ ...]\nExcluded types (default: None)"
  type: boolean
  inputBinding:
    prefix: -e
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
cwlVersion: v1.1
baseCommand:
- iCount
- annotate
