class: CommandLineTool
id: falconc_raptor_db_filter.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean
  inputBinding:
    prefix: --help-syntax
- id: in__blacklistfn_string
  doc: =, --blacklist-fn=  string  ""  set blacklist_fn
  type: boolean
  inputBinding:
    prefix: -b
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- falconc
- raptor-db-filter
