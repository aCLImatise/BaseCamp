class: CommandLineTool
id: falconc_kmers.cwl
inputs:
- id: in_help_syntax
  doc: 'advanced: prepend,plurals,..'
  type: boolean?
  inputBinding:
    prefix: --help-syntax
- id: in__intdummy_int
  doc: =, --int-dummy=     int     42       set int_dummy
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_stringdummy_string_set
  doc: =, --string-dummy=  string  "hello"  set string_dummy
  type: boolean?
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- falconc
- kmers
