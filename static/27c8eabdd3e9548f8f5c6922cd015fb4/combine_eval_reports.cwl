class: CommandLineTool
id: combine_eval_reports.pl.cwl
inputs:
- id: e
  doc: ': Eval report mode [default]'
  type: boolean
  inputBinding:
    prefix: -e
- id: s
  doc: ': General statistics report mode.  Cannot be used with -e.'
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- combine_eval_reports.pl
