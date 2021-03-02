class: CommandLineTool
id: br_bioflat.rb.cwl
inputs:
- id: in_namespace
  doc: set serch namespace to NAME
  type: string?
  inputBinding:
    prefix: --namespace
- id: in_primary
  doc: "set primary namespece to UNIQUE\nDefault primary/secondary namespaces depend\
    \ on\neach format of flatfiles."
  type: string?
  inputBinding:
    prefix: --primary
- id: in_secondary
  doc: "set secondary namespaces.\nYou may use this option many times to specify\n\
    more than one namespace."
  type: string?
  inputBinding:
    prefix: --secondary
- id: in_add_secondary
  doc: "add secondary namespaces to default specification.\nYou can use this option\
    \ many times."
  type: string?
  inputBinding:
    prefix: --add-secondary
- id: in_env
  doc: '=/path/to/env     use env program to run sort (default: /usr/bin/env)'
  type: boolean?
  inputBinding:
    prefix: --env
- id: in_env_arg
  doc: "argument given to the env program (default: LC_ALL=C)\n(multiple --env-arg=XXXXXX\
    \ can be specified)"
  type: string?
  inputBinding:
    prefix: --env-arg
- id: in_renew
  doc: re-read all flatfiles and update whole index
  type: boolean?
  inputBinding:
    prefix: --renew
- id: in_make_index
  doc: "/DBNAME\nsame as --create --type flat --location DIR --dbname DBNAME"
  type: string?
  inputBinding:
    prefix: --makeindex
- id: in_make_index_bdb
  doc: "/DBNAME\nsame as --create --type bdb  --location DIR --dbname DBNAME"
  type: string?
  inputBinding:
    prefix: --makeindexBDB
- id: in_format
  doc: instead of genbank|embl|fasta, specifing a class name is allowed
  type: string?
  inputBinding:
    prefix: --format
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- br_bioflat.rb
