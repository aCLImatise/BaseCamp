class: CommandLineTool
id: falcodiff.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_qc_data_1txt
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fast_qc_data_2txt
  doc: ''
  type: string
  inputBinding:
    position: 2
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
outputs: []
cwlVersion: v1.1
baseCommand:
- falcodiff
