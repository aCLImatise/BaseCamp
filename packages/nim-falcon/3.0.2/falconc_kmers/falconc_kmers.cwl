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
- id: in_km_ers
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
- kmers
