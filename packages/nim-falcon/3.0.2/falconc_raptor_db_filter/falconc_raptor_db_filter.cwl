class: CommandLineTool
id: falconc_raptor_db_filter.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean?
  inputBinding:
    prefix: --help-syntax
- id: in_blacklistfn_string_set
  doc: =, --blacklist-fn=  string  ""  set blacklist_fn
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_raptor_db_filter
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nim-falcon:3.0.2--h1341992_0
cwlVersion: v1.1
baseCommand:
- falconc
- raptor-db-filter
