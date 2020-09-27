class: CommandLineTool
id: combine_eval_reports.pl.cwl
inputs:
- id: in_eval_report_mode
  doc: ': Eval report mode [default]'
  type: boolean
  inputBinding:
    prefix: -e
- id: in_general_statistics_report
  doc: ': General statistics report mode.  Cannot be used with -e.'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- combine_eval_reports.pl
