class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/isoseq3_summarize.cwl
inputs:
- id: log_level
  doc: 'STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]'
  type: boolean
  inputBinding:
    prefix: --log-level
- id: log_file
  doc: FILE  Log to a file, instead of stderr.
  type: boolean
  inputBinding:
    prefix: --log-file
- id: summary_dot_csv
  doc: STR   Output summary CSV
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- isoseq3
- summarize
