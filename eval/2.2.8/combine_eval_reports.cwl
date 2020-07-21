class: CommandLineTool
id: ../../../combine_eval_reports.pl.cwl
inputs:
- id: eval_report_mode
  doc: ': Eval report mode [default]'
  type: boolean
  inputBinding:
    prefix: -e
- id: general_statistics_report
  doc: ': General statistics report mode.  Cannot be used with -e.'
  type: boolean
  inputBinding:
    prefix: -s
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
- id: more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
outputs: []
cwlVersion: v1.1
baseCommand:
- combine_eval_reports.pl
