class: CommandLineTool
id: ../../../falcodiff.cwl
inputs:
- id: outdir
  doc: 'Create all output files in the specified  output directory. If notprovided,
    files  will be created in the same directory as  the input file. '
  type: boolean
  inputBinding:
    prefix: --outdir
- id: skip_text
  doc: 'Skip generating text file (Default = false) '
  type: boolean
  inputBinding:
    prefix: --skip-text
- id: skip_html
  doc: 'Skip generating HTML file (Default = false) '
  type: boolean
  inputBinding:
    prefix: --skip-html
- id: skip_short_summary
  doc: 'Skip short summary(Default = false) '
  type: boolean
  inputBinding:
    prefix: --skip-short-summary
- id: verbose
  doc: 'print more run info '
  type: boolean
  inputBinding:
    prefix: --verbose
- id: about
  doc: 'print about message '
  type: boolean
  inputBinding:
    prefix: -about
- id: fast_qc_data_one_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_qc_data_two_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- falcodiff
