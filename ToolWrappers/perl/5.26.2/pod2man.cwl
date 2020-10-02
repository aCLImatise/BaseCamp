class: CommandLineTool
id: pod2man.cwl
inputs:
- id: in_verbose
  doc: ''
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_utf_eight
  doc: ''
  type: boolean
  inputBinding:
    prefix: --utf8
- id: in_stderr
  doc: ''
  type: boolean
  inputBinding:
    prefix: --stderr
- id: in_rquote
  doc: ''
  type: string
  inputBinding:
    prefix: --rquote
- id: in_l_quote
  doc: ''
  type: string
  inputBinding:
    prefix: --lquote
- id: in_section
  doc: ''
  type: string
  inputBinding:
    prefix: --section
- id: in_release
  doc: ''
  type: string
  inputBinding:
    prefix: --release
- id: in_no_urls
  doc: ''
  type: boolean
  inputBinding:
    prefix: --nourls
- id: in_name
  doc: ''
  type: string
  inputBinding:
    prefix: --name
- id: in_fixed_bold_italic
  doc: ''
  type: string
  inputBinding:
    prefix: --fixedbolditalic
- id: in_fixed_bold
  doc: ''
  type: string
  inputBinding:
    prefix: --fixedbold
- id: in_fixed
  doc: ''
  type: string
  inputBinding:
    prefix: --fixed
- id: in_date
  doc: ''
  type: string
  inputBinding:
    prefix: --date
- id: in_center
  doc: ''
  type: string
  inputBinding:
    prefix: --center
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pod2man
