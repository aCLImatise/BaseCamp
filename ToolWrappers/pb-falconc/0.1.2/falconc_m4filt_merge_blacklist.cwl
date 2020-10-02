class: CommandLineTool
id: falconc_m4filt_merge_blacklist.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean
  inputBinding:
    prefix: --help-syntax
- id: in__blistfofn_string
  doc: =, --blistFofn=  string  REQUIRED  set blistFofn
  type: boolean
  inputBinding:
    prefix: -b
- id: in__outfn_string
  doc: =, --outFn=      string  REQUIRED  set outFn
  type: boolean
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- falconc
- m4filt-merge-blacklist
