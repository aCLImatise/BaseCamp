class: CommandLineTool
id: falcodiff.cwl
inputs:
- id: in_outdir
  doc: "Create all output files in the specified\noutput directory. If notprovided,\
    \ files\nwill be created in the same directory as\nthe input file."
  type: boolean
  inputBinding:
    prefix: --outdir
- id: in_skip_text
  doc: Skip generating text file (Default = false)
  type: boolean
  inputBinding:
    prefix: --skip-text
- id: in_skip_html
  doc: Skip generating HTML file (Default = false)
  type: boolean
  inputBinding:
    prefix: --skip-html
- id: in_skip_short_summary
  doc: Skip short summary(Default = false)
  type: boolean
  inputBinding:
    prefix: --skip-short-summary
- id: in_verbose
  doc: print more run info
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_about
  doc: print about message
  type: boolean
  inputBinding:
    prefix: -about
- id: in_fast_qc_data_one_dot_txt
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_fast_qc_data_two_dot_txt
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- falcodiff
